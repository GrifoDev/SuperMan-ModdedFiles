.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field private static final synthetic -android-text-Layout$AlignmentSwitchesValues:[I = null

.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mJustificationMode:I

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid-text-Layout$AlignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    add-int/lit8 v15, v15, -0x1

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    move/from16 v0, v18

    if-le v0, v15, :cond_1

    move/from16 v18, v15

    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v11

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 7

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    move v4, v3

    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_3

    if-ne v4, v3, :cond_2

    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    :goto_1
    add-int v0, v4, v5

    if-lt v0, p1, :cond_1

    if-ge v0, p2, :cond_1

    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const v1, 0xfeff

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 5

    invoke-virtual {p3, p3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v1, 0x0

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_2

    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_0

    move v2, p2

    :cond_0
    invoke-static {p3, p0, v0, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private getHorizontal(IZ)F
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method

.method private getHorizontal(IZIZ)F
    .locals 14

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    array-length v2, v12

    if-lez v2, :cond_0

    new-instance v9, Landroid/text/Layout$TabStops;

    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v13, v2

    :cond_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getHorizontal(IZZ)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getJustifyWidth(I)F
    .locals 24

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/text/Layout;->mWidth:I

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    sget-object v16, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v14, Landroid/text/Spanned;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const-class v23, Landroid/text/style/ParagraphStyle;

    move/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v15

    const-class v22, Landroid/text/style/ParagraphStyle;

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v14, v0, v15, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v11, v22, -0x1

    :goto_1
    if-ltz v11, :cond_1

    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/AlignmentSpan;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    aget-object v22, v16, v11

    check-cast v22, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {v22 .. v22}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    :cond_1
    move-object/from16 v0, v16

    array-length v9, v0

    move/from16 v21, v7

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_2

    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    aget-object v22, v16, v11

    check-cast v22, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface/range {v22 .. v22}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v4

    aget-object v22, v16, v11

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    add-int v22, v18, v4

    move/from16 v0, p1

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    const/16 v21, 0x1

    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_8

    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    aget-object v10, v16, v11

    check-cast v10, Landroid/text/style/LeadingMarginSpan;

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_7

    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v22

    sub-int v13, v13, v22

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v22

    add-int v8, v8, v22

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v22

    if-eqz v22, :cond_9

    new-instance v19, Landroid/text/Layout$TabStops;

    const/16 v22, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_9
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v12, v0, :cond_b

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_a

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_5
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_f

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_e

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    :goto_6
    sub-int v22, v13, v8

    sub-int v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    return v22

    :cond_a
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_5

    :cond_b
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v12, v0, :cond_d

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_c

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_5

    :cond_c
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_5

    :cond_d
    move-object v3, v12

    goto :goto_5

    :cond_e
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v22

    move/from16 v0, v22

    neg-int v6, v0

    goto :goto_6

    :cond_f
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_11

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_10

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v22

    move/from16 v0, v22

    neg-int v6, v0

    goto :goto_6

    :cond_10
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    goto :goto_6

    :cond_11
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    goto :goto_6
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v9

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    array-length v1, v9

    if-lez v1, :cond_0

    new-instance v8, Landroid/text/Layout$TabStops;

    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    :cond_3
    invoke-virtual {v0, v12}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v11}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v10
.end method

.method private getLineStartPos(III)I
    .locals 11

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :cond_0
    :goto_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_5

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p2, v9

    :goto_1
    return v8

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p3, v9

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    array-length v9, v6

    if-lez v9, :cond_6

    new-instance v7, Landroid/text/Layout$TabStops;

    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_8

    const/4 v9, 0x1

    if-ne v1, v9, :cond_7

    sub-int v9, p3, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    goto :goto_1

    :cond_7
    sub-int v9, p2, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    goto :goto_1

    :cond_8
    and-int/lit8 v2, v2, -0x2

    add-int v9, p2, p3

    sub-int/2addr v9, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    shr-int v8, v9, v10

    goto :goto_1
.end method

.method private getLineVisibleEnd(III)I
    .locals 3

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    :cond_1
    if-le p3, p2, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, p3, -0x1

    return v2

    :cond_2
    invoke-static {v0}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    return p3
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    move p1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 13

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v11, 0x0

    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-ne p2, v1, :cond_3

    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_5

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    :cond_0
    :goto_2
    if-eqz v11, :cond_1

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    if-eq v12, v5, :cond_1

    xor-int/lit8 p2, p2, 0x1

    move v5, v12

    :cond_1
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v1, p1, v3

    invoke-virtual {v0, v1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int p1, v3, v1

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v0

    return p1

    :cond_2
    move v1, v7

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    return p1

    :cond_5
    if-ne p1, v3, :cond_0

    if-lez v10, :cond_6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_6
    return p1
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_0

    const/4 v14, 0x0

    return v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    array-length v14, v12

    if-nez v14, :cond_1

    const/4 v14, 0x0

    return v14

    :cond_1
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_4

    const/4 v3, 0x1

    :goto_0
    move v13, v3

    const/4 v2, 0x0

    :goto_1
    array-length v14, v12

    if-ge v2, v14, :cond_6

    aget-object v14, v12, v2

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_2

    aget-object v14, v12, v2

    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    aget-object v14, v12, v2

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    or-int/2addr v13, v14

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_3
    array-length v14, v12

    if-ge v2, v14, :cond_7

    aget-object v8, v12, v2

    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isJustificationRequired(I)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/Layout;->mJustificationMode:I

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 23

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v22

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    iget-boolean v4, v3, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v9, 0x1

    :goto_0
    iget-object v13, v3, Landroid/text/MeasuredText;->mChars:[C

    iget v15, v3, Landroid/text/MeasuredText;->mLen:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    const-class v4, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/LeadingMarginSpan;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v16, v20, v4

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v17, v17, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget v4, v3, Landroid/text/MeasuredText;->mDir:I

    iget-object v5, v3, Landroid/text/MeasuredText;->mLevels:[B

    iget-object v7, v3, Landroid/text/MeasuredText;->mChars:[C

    iget v9, v3, Landroid/text/MeasuredText;->mLen:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    iget v9, v3, Landroid/text/MeasuredText;->mDir:I

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_2

    aget-char v4, v13, v14

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    const/4 v11, 0x1

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v18

    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v21

    array-length v4, v0

    if-lez v4, :cond_2

    new-instance v12, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v21

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v4, v22

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-float/2addr v4, v5

    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v4

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6

    const/high16 v5, 0x41a00000    # 20.0f

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, 0x0

    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    if-nez p4, :cond_0

    check-cast p0, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    if-nez v0, :cond_2

    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    int-to-float v2, v3

    goto :goto_1

    :cond_3
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    return v4
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13

    const v12, 0x3ffffff

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    aget v11, v7, v0

    add-int v8, v6, v11

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    if-le v3, v5, :cond_0

    move v3, v5

    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    if-le p1, v8, :cond_1

    return v10

    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_6

    const/4 v1, 0x0

    :cond_3
    :goto_1
    const/4 v2, -0x1

    if-ne p1, v6, :cond_8

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_7

    const/4 v2, 0x0

    :cond_4
    :goto_2
    if-ge v2, v1, :cond_b

    :goto_3
    return v9

    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_4
    array-length v11, v7

    if-ge v0, v11, :cond_4

    aget v11, v7, v0

    add-int v8, v6, v11

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    if-le v3, v5, :cond_9

    move v3, v5

    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    goto :goto_2

    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_b
    move v9, v10

    goto :goto_3
.end method


# virtual methods
.method public addSelectionPath(IILandroid/graphics/Path;)V
    .locals 19

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move/from16 v17, p2

    move/from16 p2, p1

    move/from16 p1, v17

    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_1
    add-int/lit8 v16, v3, 0x1

    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    if-gez v6, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v3, :cond_0

    new-instance v3, Landroid/text/SpanSet;

    const-class v5, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v3, v5}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v10, v5, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    sget-object v19, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v13, p5

    :goto_0
    move/from16 v0, p6

    if-gt v13, v0, :cond_6

    move/from16 v11, v17

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    move/from16 v17, v12

    move/from16 v7, v16

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    move/from16 v16, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    move/from16 v0, v18

    if-lt v11, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v18

    const/16 v20, 0x0

    if-ne v11, v12, :cond_1

    if-nez v11, :cond_4

    :cond_1
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v14, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v14

    if-ge v3, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v14

    if-gt v3, v11, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/LineBackgroundSpan;

    aget-object v3, v3, v14

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/ParagraphStyle;

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_5

    aget-object v2, v19, v15

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    :cond_7
    if-eqz p2, :cond_9

    if-eqz p4, :cond_8

    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_9

    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 49

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v38

    sget-object v41, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v36, v0

    const/16 v27, 0x0

    const/16 v44, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v46

    move/from16 v33, p2

    move-object/from16 v43, v27

    :goto_0
    move/from16 v0, v33

    move/from16 v1, p3

    if-gt v0, v1, :cond_17

    move/from16 v12, v38

    add-int/lit8 v4, v33, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v38

    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v13

    move/from16 v8, v37

    add-int/lit8 v4, v33, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    move/from16 v37, v10

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_a

    move-object/from16 v39, v11

    check-cast v39, Landroid/text/Spanned;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v45

    if-eqz v12, :cond_0

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_6

    :cond_0
    const/4 v14, 0x1

    :goto_1
    move/from16 v0, v40

    if-lt v12, v0, :cond_3

    move/from16 v0, v33

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz v14, :cond_3

    :cond_1
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v40

    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v36, v0

    move-object/from16 v0, v41

    array-length v4, v0

    add-int/lit8 v35, v4, -0x1

    :goto_2
    if-ltz v35, :cond_2

    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_7

    aget-object v4, v41, v35

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v36

    :cond_2
    const/16 v44, 0x0

    :cond_3
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v47, v14

    const/16 v35, 0x0

    :goto_3
    move/from16 v0, v35

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_8

    aget-object v4, v41, v35

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    aget-object v4, v41, v35

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v42

    add-int v4, v42, v29

    move/from16 v0, v33

    if-ge v0, v4, :cond_8

    const/16 v47, 0x1

    :cond_4
    const/16 v35, 0x0

    :goto_4
    move/from16 v0, v35

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_5

    aget-object v3, v41, v35

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    const/4 v4, -0x1

    if-ne v7, v4, :cond_9

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    :cond_5
    :goto_5
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v35, v35, -0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    :cond_9
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v26

    if-eqz v26, :cond_c

    xor-int/lit8 v4, v44, 0x1

    if-eqz v4, :cond_18

    if-nez v43, :cond_d

    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :goto_6
    const/16 v44, 0x1

    :goto_7
    move-object/from16 v28, v36

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_f

    const/4 v4, 0x1

    if-ne v7, v4, :cond_e

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :cond_b
    :goto_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_12

    const/4 v4, 0x1

    if-ne v7, v4, :cond_11

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    add-int v48, v18, v30

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_15

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_15

    xor-int/lit8 v4, v26, 0x1

    if-eqz v4, :cond_15

    xor-int/lit8 v4, v31, 0x1

    if-eqz v4, :cond_15

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    add-int/lit8 v33, v33, 0x1

    move-object/from16 v43, v27

    goto/16 :goto_0

    :cond_c
    move-object/from16 v27, v43

    goto :goto_7

    :cond_d
    const/16 v4, 0x14

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v43

    goto :goto_6

    :cond_e
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_f
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_b

    const/4 v4, 0x1

    if-ne v7, v4, :cond_10

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_10
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_11
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    neg-int v0, v4

    move/from16 v30, v0

    sub-int v48, v6, v30

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v34, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_14

    const/4 v4, 0x1

    if-ne v7, v4, :cond_13

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    neg-int v0, v4

    move/from16 v30, v0

    sub-int v4, v6, v34

    sub-int v48, v4, v30

    goto/16 :goto_9

    :cond_13
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    sub-int v4, v18, v34

    add-int v48, v4, v30

    goto/16 :goto_9

    :cond_14
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    and-int/lit8 v34, v34, -0x2

    add-int v4, v6, v18

    sub-int v4, v4, v34

    shr-int/lit8 v4, v4, 0x1

    add-int v48, v4, v30

    goto/16 :goto_9

    :cond_15
    move-object/from16 v19, v46

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    if-eqz v31, :cond_16

    sub-int v4, v6, v18

    sub-int v4, v4, v30

    int-to-float v4, v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->justify(F)V

    :cond_16
    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v46

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_a

    :cond_17
    invoke-static/range {v46 .. v46}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void

    :cond_18
    move-object/from16 v27, v43

    goto/16 :goto_7
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 12

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, v7}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v5, v9, v10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v6, v9, v10

    :goto_0
    const/4 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    const/16 v10, 0x800

    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v10

    or-int v1, v9, v10

    const/4 v9, 0x2

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    sub-int v9, v0, v8

    shr-int/lit8 v3, v9, 0x2

    if-eqz v4, :cond_1

    add-int/2addr v8, v3

    :cond_1
    if-eqz v1, :cond_2

    sub-int/2addr v0, v3

    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    const/high16 v5, 0x3f000000    # 0.5f

    :cond_3
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_4

    const/high16 v6, 0x3f000000    # 0.5f

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_8

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v0

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    const/4 v9, 0x2

    if-ne v1, v9, :cond_9

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    :goto_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    move v6, v5

    goto :goto_0

    :cond_8
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_9
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_a
    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHyphen(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    return v5

    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    return v5

    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    return v6

    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    if-ne v1, v7, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    :cond_1
    return v6

    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    if-ne v1, v7, :cond_4

    return v6

    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    return v5
.end method

.method public getLineMax(I)F
    .locals 3

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    :goto_0
    add-float v2, v0, v1

    return v2

    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    :try_start_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    monitor-exit v5

    return-wide v6

    :cond_0
    :try_start_1
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v3, v0, :cond_1

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getLineRight(I)F
    .locals 7

    const/4 v6, -0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    if-ne v1, v6, :cond_1

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    if-ne v1, v6, :cond_4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    return v5

    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 3

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    :goto_0
    add-float v2, v0, v1

    return v2

    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IFZ)I
    .locals 27

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    move/from16 v23, v7

    :goto_0
    move v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v6, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/16 v20, 0x0

    :goto_1
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_a

    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v4, v4, v20

    add-int v18, v6, v4

    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v20, 0x1

    aget v4, v4, v5

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    add-int v26, v18, v4

    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v20, 0x1

    aget v4, v4, v5

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/16 v21, 0x1

    :goto_2
    if-eqz v21, :cond_3

    const/16 v25, -0x1

    :goto_3
    move/from16 v0, v26

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    move/from16 v26, v23

    :cond_0
    add-int/lit8 v4, v26, -0x1

    add-int/lit8 v19, v4, 0x1

    add-int/lit8 v4, v18, 0x1

    add-int/lit8 v22, v4, -0x1

    :goto_4
    sub-int v4, v19, v22

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    add-int v4, v19, v22

    div-int/lit8 v17, v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    move/from16 v0, v25

    int-to-float v5, v0

    mul-float/2addr v4, v5

    move/from16 v0, v25

    int-to-float v5, v0

    mul-float v5, v5, p2

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    move/from16 v19, v17

    goto :goto_4

    :cond_1
    sub-int v4, v7, v6

    add-int/lit8 v5, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int v23, v4, v6

    goto/16 :goto_0

    :cond_2
    const/16 v21, 0x0

    goto :goto_2

    :cond_3
    const/16 v25, 0x1

    goto :goto_3

    :cond_4
    move/from16 v22, v17

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v18, 0x1

    move/from16 v0, v22

    if-ge v0, v4, :cond_6

    add-int/lit8 v22, v18, 0x1

    :cond_6
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    sub-int v4, v22, v6

    move/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int v13, v4, v6

    sub-int v4, v13, v6

    xor-int/lit8 v5, v21, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int v22, v4, v6

    move/from16 v0, v22

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v26

    if-ge v13, v0, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v13, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v24

    cmpg-float v4, v24, v16

    if-gez v4, :cond_7

    move/from16 v16, v24

    move/from16 v22, v13

    :cond_7
    cmpg-float v4, v16, v15

    if-gez v4, :cond_8

    move/from16 v15, v16

    move/from16 v14, v22

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v4, v16, v15

    if-gez v4, :cond_9

    move/from16 v15, v16

    move/from16 v14, v18

    :cond_9
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v4, v16, v15

    if-gtz v4, :cond_b

    move/from16 v15, v16

    move/from16 v14, v23

    :cond_b
    invoke-static {v3}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v14
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    array-length v2, v3

    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2
.end method

.method public final getParagraphRight(I)I
    .locals 3

    iget v1, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v1, v2

    return v2
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getRunRange(I)J
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v7, :cond_0

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v7, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    :cond_1
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_3

    aget v7, v5, v1

    add-int v6, v4, v7

    add-int/lit8 v7, v1, 0x1

    aget v7, v5, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int v2, v6, v7

    if-lt p1, v6, :cond_2

    if-ge p1, v2, :cond_2

    invoke-static {v6, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move/from16 v17, p2

    move/from16 p2, p1

    move/from16 p1, v17

    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_1
    add-int/lit8 v16, v3, 0x1

    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public getSelectionRect(IIIIILandroid/graphics/Rect;)V
    .locals 17

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    if-le v10, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v16, v10, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    add-int/lit8 v10, v10, -0x1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget-object v15, v3, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v15, v15

    if-ge v8, v15, :cond_3

    iget-object v15, v3, Landroid/text/Layout$Directions;->mDirections:[I

    aget v15, v15, v8

    add-int v7, v11, v15

    iget-object v15, v3, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v16, v8, 0x1

    aget v15, v15, v16

    const v16, 0x3ffffff

    and-int v15, v15, v16

    add-int v14, v7, v15

    if-le v14, v10, :cond_1

    move v14, v10

    :cond_1
    move/from16 v0, p2

    if-gt v0, v14, :cond_2

    move/from16 v0, p3

    if-lt v0, v7, :cond_2

    move/from16 v0, p2

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v0, p3

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v13, v4, :cond_2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v13, v15, v1, v2}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v5

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v4, v15, v1, v2}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v15

    float-to-int v9, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v15

    float-to-int v12, v15

    move-object/from16 v0, p6

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v9, v1, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getSpacingAdd()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    :cond_0
    return v9

    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_6

    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v8, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-ne p1, v4, :cond_4

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_5

    :goto_2
    return v8

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_1

    :cond_5
    move v8, v9

    goto :goto_2

    :cond_6
    sub-int/2addr p1, v4

    const/4 v1, 0x0

    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_8

    aget v10, v7, v1

    if-ne p1, v10, :cond_7

    return v8

    :cond_7
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_8
    return v9
.end method

.method public isRtlCharAt(I)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_0

    return v9

    :cond_0
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    return v8

    :cond_1
    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    array-length v10, v6

    if-ge v1, v10, :cond_4

    aget v10, v6, v1

    add-int v7, v5, v10

    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int v3, v7, v10

    if-lt p1, v7, :cond_3

    if-ge p1, v3, :cond_3

    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v2, v10, 0x3f

    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_2

    :goto_1
    return v8

    :cond_2
    move v8, v9

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    return v9
.end method

.method protected final isSpanned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void
.end method

.method protected setJustificationMode(I)V
    .locals 0

    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/text/Layout;->-getandroid-text-Layout$AlignmentSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
