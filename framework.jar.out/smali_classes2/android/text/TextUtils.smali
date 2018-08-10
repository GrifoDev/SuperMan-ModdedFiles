.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$1;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;,
        Landroid/text/TextUtils$TruncateAt;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_NORMAL:[C

.field public static final ELLIPSIS_STRING:Ljava/lang/String;

.field static final ELLIPSIS_TWO_DOTS:[C

.field private static final ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LAST_SPAN:I = 0x1a

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v24

    cmpg-float v4, v24, p2

    if-gtz v4, :cond_0

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p0

    :cond_0
    :try_start_1
    iget-object v14, v3, Landroid/text/MeasuredText;->mChars:[C

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v0, v7, :cond_2

    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    add-int/lit8 v15, v15, 0x1

    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v22, v15, 0x1

    const/16 v19, 0x0

    const-string/jumbo v20, ""

    const/16 v23, 0x0

    const/16 v16, 0x0

    iget-object v0, v3, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v25, v0

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v8

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v0, v7, :cond_5

    move/from16 v0, v23

    int-to-float v4, v0

    aget v5, v25, v17

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_3

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v22, v22, -0x1

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    iget v4, v8, Landroid/text/MeasuredText;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v4, v5}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v18

    move/from16 v0, v23

    int-to-float v4, v0

    add-float v4, v4, v18

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_3

    add-int/lit8 v19, v17, 0x1

    move-object/from16 v20, v9

    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v5, v10

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    invoke-static {v8}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    new-instance v21, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v21

    :catchall_0
    move-exception v4

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    const/4 v4, 0x0

    array-length v5, p0

    if-nez v5, :cond_0

    const-string/jumbo v4, ""

    return-object v4

    :cond_0
    array-length v5, p0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    aget-object v4, p0, v4

    return-object v4

    :cond_1
    const/4 v2, 0x0

    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p0, v5

    instance-of v7, v0, Landroid/text/Spanned;

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_6

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    array-length v5, p0

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v0, p0, v4

    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    :cond_3
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance v4, Landroid/text/SpannedString;

    invoke-direct {v4, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p0

    :goto_2
    if-ge v4, v5, :cond_7

    aget-object v0, p0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8

    if-nez p3, :cond_0

    const-class p3, Ljava/lang/Object;

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    if-ge v4, p1, :cond_1

    move v4, p1

    :cond_1
    if-le v0, p2, :cond_2

    move v0, p2

    :cond_2
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static couldAffectRtl(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x590

    if-gt v2, p0, :cond_1

    const/16 v2, 0x8ff

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x200e

    if-eq p0, v2, :cond_0

    const/16 v2, 0x200f

    if-eq p0, v2, :cond_0

    const/16 v2, 0x202a

    if-gt v2, p0, :cond_2

    const/16 v2, 0x202e

    if-le p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x2066

    if-gt v2, p0, :cond_3

    const/16 v2, 0x2069

    if-le p0, v2, :cond_0

    :cond_3
    const v2, 0xd800

    if-gt v2, p0, :cond_4

    const v2, 0xdfff

    if-le p0, v2, :cond_0

    :cond_4
    const v2, 0xfb1d

    if-gt v2, p0, :cond_5

    const v2, 0xfdff

    if-le p0, v2, :cond_0

    :cond_5
    const v2, 0xfe70

    if-gt v2, p0, :cond_6

    const v2, 0xfefe

    if-le p0, v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    if-ne v0, v1, :cond_4

    return v5

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    return v5

    :cond_5
    return v4
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 3

    add-int v0, p1, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7

    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v1, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8

    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_0

    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 22

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v21

    cmpg-float v5, v21, p2

    if-gtz v5, :cond_1

    if-eqz p5, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p0

    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    sub-float p2, p2, v11

    const/4 v13, 0x0

    move/from16 v17, v15

    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_3

    move v14, v13

    :goto_0
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    :cond_2
    iget-object v10, v3, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    :goto_1
    sub-int v5, v17, v14

    sub-int v16, v15, v5

    if-eqz p4, :cond_a

    if-lez v16, :cond_d

    add-int/lit8 v13, v14, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v10, v14

    :goto_2
    move v12, v13

    :goto_3
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    const v5, 0xfeff

    aput-char v5, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_4

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move v14, v13

    goto :goto_0

    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v5, :cond_5

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_6

    :cond_5
    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    goto :goto_0

    :cond_6
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p2, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v15, v6, v5}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Landroid/text/MeasuredText;->measure(II)F

    move-result v5

    sub-float p2, p2, v5

    const/4 v5, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v3, v0, v5, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v5, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_9

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v18

    :cond_9
    :try_start_2
    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-class v7, Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move v6, v15

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v8

    :cond_a
    if-nez v16, :cond_b

    :try_start_3
    const-string/jumbo v5, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v5

    :cond_b
    if-nez v4, :cond_c

    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v16

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v5, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v15, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v5

    :cond_c
    :try_start_5
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v20

    :catchall_0
    move-exception v5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v5

    :cond_d
    move v13, v14

    goto/16 :goto_2
.end method

.method public static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    return v4
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    const/16 v7, 0x5e

    array-length v5, p1

    const/16 v6, 0x9

    if-le v5, v6, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "max of 9 values are supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_5

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_1

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    if-gez v4, :cond_3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "template requests value ^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v1

    :cond_2
    return-object v3

    :cond_3
    array-length v5, p1

    if-lt v4, v5, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "template requests value ^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; only "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " provided"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    add-int/lit8 v5, v0, 0x2

    aget-object v6, p1, v4

    invoke-virtual {v3, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aget-object v5, p1, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v0, v5

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    goto :goto_0
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x1150016

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 10

    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    const/4 v5, 0x0

    if-gez p1, :cond_0

    return v5

    :cond_0
    const/4 v4, 0x0

    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_1

    const/16 v4, 0x1000

    :cond_1
    and-int/lit16 v5, p2, 0x6000

    if-nez v5, :cond_2

    return v4

    :cond_2
    move v1, p1

    :goto_0
    if-lez v1, :cond_3

    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    :cond_3
    move v2, v1

    :goto_1
    if-lez v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    :cond_7
    or-int/lit16 v5, v4, 0x2000

    return v5

    :cond_8
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_a

    if-eq v1, v2, :cond_9

    or-int/lit16 v4, v4, 0x2000

    :cond_9
    return v4

    :cond_a
    if-ne v1, v2, :cond_c

    return v4

    :cond_b
    add-int/lit8 v2, v2, -0x1

    :cond_c
    if-lez v2, :cond_d

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_b

    if-eq v0, v9, :cond_b

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_b

    :cond_d
    if-lez v2, :cond_10

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_e

    const/16 v5, 0x3f

    if-ne v0, v5, :cond_f

    :cond_e
    if-ne v0, v7, :cond_12

    add-int/lit8 v3, v2, -0x2

    :goto_2
    if-ltz v3, :cond_12

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_11

    return v4

    :cond_f
    const/16 v5, 0x21

    if-eq v0, v5, :cond_e

    :cond_10
    return v4

    :cond_11
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    or-int/lit16 v5, v4, 0x4000

    return v5

    :cond_13
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    return-void

    :cond_0
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_1

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    :cond_1
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_2

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_0

    :cond_2
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_3

    check-cast p0, Landroid/text/GetChars;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_0

    :cond_3
    move v2, p1

    move v1, p4

    :goto_1
    if-ge v2, p2, :cond_4

    add-int/lit8 p4, v1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, p4

    goto :goto_1

    :cond_4
    move p4, v1

    goto :goto_0
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "debug.force_rtl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne p1, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v7, v4, -0x1

    if-ne p1, v7, :cond_1

    return v4

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v7, 0xd800

    if-lt v0, v7, :cond_4

    const v7, 0xdbff

    if-gt v0, v7, :cond_4

    add-int/lit8 v7, p1, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v7, 0xdc00

    if-lt v1, v7, :cond_3

    const v7, 0xdfff

    if-gt v1, v7, :cond_3

    add-int/lit8 p1, p1, 0x2

    :goto_0
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    move-object v7, p0

    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_5

    move-object v7, p0

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    move-object v7, p0

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v6, p1, :cond_2

    if-le v2, p1, :cond_2

    move p1, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return p1
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    return v7

    :cond_1
    add-int/lit8 v6, p1, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v6, 0xdc00

    if-lt v0, v6, :cond_4

    const v6, 0xdfff

    if-gt v0, v6, :cond_4

    add-int/lit8 v6, p1, -0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v6, 0xd800

    if-lt v1, v6, :cond_3

    const v6, 0xdbff

    if-gt v1, v6, :cond_3

    add-int/lit8 p1, p1, -0x2

    :goto_0
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    move-object v6, p0

    check-cast v6, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_5

    move-object v6, p0

    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object v6, p0

    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    move p1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    return p1
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5

    const/16 v4, 0x20

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-le v0, v2, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method public static hasStyleSpan(Landroid/text/Spanned;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/text/style/CharacterStyle;

    aput-object v2, v1, v4

    const-class v2, Landroid/text/style/ParagraphStyle;

    aput-object v2, v1, v3

    const-class v2, Landroid/text/style/UpdateAppearance;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    array-length v5, v1

    move v2, v4

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v0, v1, v2

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v6

    const/4 v7, -0x1

    invoke-interface {p0, v7, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v4
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    instance-of v6, p0, Landroid/text/GetChars;

    if-nez v6, :cond_0

    const-class v6, Ljava/lang/StringBuffer;

    if-ne v1, v6, :cond_2

    :cond_0
    const/16 v0, 0x1f4

    const/16 v6, 0x1f4

    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    :goto_0
    if-ge p2, p3, :cond_5

    add-int/lit16 v4, p2, 0x1f4

    if-le v4, p3, :cond_1

    move v4, p3

    :cond_1
    const/4 v6, 0x0

    invoke-static {p0, p2, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, v4, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-char v6, v5, v3

    if-ne v6, p1, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    add-int v6, v3, p2

    return v6

    :cond_2
    const-class v6, Ljava/lang/StringBuilder;

    if-eq v1, v6, :cond_0

    const-class v6, Ljava/lang/String;

    if-eq v1, v6, :cond_0

    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_7

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_6

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move p2, v4

    goto :goto_0

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    return v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v7
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_0
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    sub-int v2, p3, v1

    if-le p2, v2, :cond_1

    return v4

    :cond_1
    if-gez p2, :cond_2

    return v4

    :cond_2
    invoke-static {p0, p2, p1, v3, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;[C)I
    .locals 7

    const/4 v6, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    array-length v2, p1

    if-eqz v2, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    return v6

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_6

    add-int v4, v0, v2

    if-le v4, v3, :cond_2

    return v6

    :cond_2
    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    add-int v4, v0, v1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aget-char v5, p1, v1

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_4

    :cond_3
    if-ne v1, v2, :cond_5

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v6
.end method

.method public static isArabicChar(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x600

    if-lt p0, v2, :cond_1

    const/16 v2, 0x6ff

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v2, 0xfb00

    if-lt p0, v2, :cond_2

    const v2, 0xfdff

    if-le p0, v2, :cond_0

    :cond_2
    const v2, 0xfe70

    if-lt p0, v2, :cond_3

    const v2, 0xfefe

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isCombinedCode(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isGraphic(C)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    const/16 v4, 0xf

    if-eq v1, v4, :cond_0

    const/16 v4, 0x10

    if-eq v1, v4, :cond_0

    const/16 v4, 0x13

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    const/16 v4, 0xe

    if-eq v1, v4, :cond_0

    const/16 v4, 0xc

    if-eq v1, v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    return v5
.end method

.method public static isHalant(C)Z
    .locals 1

    const/16 v0, 0x94d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9cd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0xa4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xacd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbcd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xccd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xddf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb4d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public static isIndianChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x900

    if-lt p0, v1, :cond_0

    const/16 v1, 0xdff

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isKhmerChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1780

    if-lt p0, v1, :cond_0

    const/16 v1, 0x17f9

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isKhmerCoengSign(C)Z
    .locals 1

    const/16 v0, 0x17d2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKhmerVowel(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x17b6

    if-lt p0, v1, :cond_0

    const/16 v1, 0x17d3

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isLaoChar(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xe81

    if-lt p0, v2, :cond_1

    const/16 v2, 0xedd

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v2, 0xe001

    if-lt p0, v2, :cond_2

    const v2, 0xe018

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isLaoVowel(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xeb1

    if-eq p0, v2, :cond_0

    const/16 v2, 0xeb4

    if-lt p0, v2, :cond_1

    const/16 v2, 0xebc

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0xec8

    if-lt p0, v2, :cond_2

    const/16 v2, 0xecd

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isMyanmarChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1000

    if-lt p0, v1, :cond_0

    const/16 v1, 0x1097

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPrintableAscii(C)Z
    .locals 4

    const/4 v2, 0x1

    const/16 v0, 0x20

    const/16 v1, 0x7e

    const/16 v3, 0x20

    if-gt v3, p0, :cond_1

    const/16 v3, 0x7e

    if-gt p0, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v3, 0xd

    if-eq p0, v3, :cond_0

    const/16 v3, 0xa

    if-eq p0, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static isThaiChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe01

    if-lt p0, v1, :cond_0

    const/16 v1, 0xe5b

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isThaiVowel(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xe31

    if-eq p0, v2, :cond_0

    const/16 v2, 0xe33

    if-lt p0, v2, :cond_1

    const/16 v2, 0xe3a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0xe47

    if-lt p0, v2, :cond_2

    const/16 v2, 0xe4e

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    if-gez p3, :cond_0

    return v8

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt p3, v7, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 p3, v7, -0x1

    :cond_1
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_2

    const-class v7, Ljava/lang/StringBuffer;

    if-ne v1, v7, :cond_4

    :cond_2
    const/16 v0, 0x1f4

    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    :goto_0
    if-ge p2, v3, :cond_7

    add-int/lit16 v5, v3, -0x1f4

    if-ge v5, p2, :cond_3

    move v5, p2

    :cond_3
    invoke-static {p0, v5, v3, v6, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, v3, v5

    add-int/lit8 v4, v2, -0x1

    :goto_1
    if-ltz v4, :cond_6

    aget-char v7, v6, v4

    if-ne v7, p1, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    add-int v7, v4, v5

    return v7

    :cond_4
    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_2

    const-class v7, Ljava/lang/String;

    if-eq v1, v7, :cond_2

    add-int/lit8 v4, v3, -0x1

    :goto_2
    if-lt v4, p2, :cond_9

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, p1, :cond_8

    return v4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_0

    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    return v8

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_9
    return v8
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static listEllipsize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/text/TextPaint;FI)Ljava/lang/CharSequence;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v10, ""

    return-object v10

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v10, ""

    return-object v10

    :cond_1
    if-nez p0, :cond_3

    const/4 v7, 0x0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    :goto_0
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-array v2, v8, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v8, -0x1

    if-eq v3, v10, :cond_2

    invoke-virtual {v5, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    aput v10, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v8, -0x1

    :goto_2
    if-ltz v3, :cond_8

    aget v10, v2, v3

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    sub-int v10, v8, v3

    add-int/lit8 v6, v10, -0x1

    if-lez v6, :cond_5

    if-nez v7, :cond_6

    sget-object v4, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v11, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v9

    cmpg-float v10, v9, p4

    if-gtz v10, :cond_7

    return-object v5

    :cond_6
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    move/from16 v0, p5

    invoke-virtual {v7, v0, v6, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_8
    const-string/jumbo v10, ""

    return-object v10
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method static obtain(I)[C
    .locals 3

    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    const/4 v1, 0x0

    sput-object v1, Landroid/text/TextUtils;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static recycle([C)V
    .locals 2

    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6

    mul-int/lit8 v3, p4, 0x2

    if-ge v3, p4, :cond_0

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    add-int v4, p1, p4

    const/4 v5, 0x0

    invoke-static {p0, p1, v4, v2, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    add-int v4, p3, p4

    invoke-static {p2, p3, v4, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    aget-char v4, v2, v0

    add-int v5, v0, p4

    aget-char v5, v2, v5

    if-eq v4, v5, :cond_2

    const/4 v1, 0x0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_2

    aget-object v5, p0, v3

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ne v6, v2, :cond_1

    if-nez v0, :cond_0

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_3
    return-object p0
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    if-ltz v4, :cond_0

    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ltz v2, :cond_2

    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public static semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 16

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-array v8, v4, [F

    new-array v2, v4, [C

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v12, v1, :cond_2

    aget-char v1, p2, v12

    invoke-static {v1}, Landroid/text/TextUtils;->isCombinedCode(C)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object/from16 v0, p2

    array-length v1, v0

    if-ne v12, v1, :cond_4

    const/4 v1, 0x0

    return-object v1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p2}, Landroid/text/TextUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v14

    if-ltz v14, :cond_5

    if-lt v14, v4, :cond_6

    :cond_5
    const/4 v1, 0x0

    return-object v1

    :cond_6
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move v6, v4

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move v15, v14

    aget-char v1, p2, v12

    invoke-static {v1}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    if-lez v15, :cond_7

    add-int/lit8 v1, v15, -0x1

    aget-char v1, v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isHalant(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v15, v15, -0x2

    goto :goto_1

    :cond_7
    if-gez v15, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_8
    :goto_2
    if-lez v14, :cond_9

    aget v1, v8, v14

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9

    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    :cond_9
    move v15, v14

    :cond_a
    move-object/from16 v0, p2

    array-length v1, v0

    add-int v12, v14, v1

    :goto_3
    if-ge v12, v4, :cond_b

    aget v1, v8, v12

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_c

    add-int/lit8 v1, v12, -0x1

    aget-char v1, v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isHalant(C)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    :cond_b
    sub-int v11, v12, v15

    new-array v10, v11, [C

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v11, :cond_d

    add-int v1, v15, v13

    aget-char v1, v2, v1

    aput-char v1, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_d
    return-object v10
.end method

.method public static semNeedMoreWidth(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x901 -> :sswitch_0
        0x942 -> :sswitch_0
        0x9c1 -> :sswitch_0
        0x9c2 -> :sswitch_0
        0xac2 -> :sswitch_0
        0xb01 -> :sswitch_0
        0xb1f -> :sswitch_0
        0xb4d -> :sswitch_0
        0xb62 -> :sswitch_0
        0xb63 -> :sswitch_0
    .end sparse-switch
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 12

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    move-object v7, p2

    check-cast v7, Landroid/text/Spanned;

    :goto_0
    sub-int v6, p4, p3

    if-nez v7, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v11

    :cond_0
    return v11

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_0

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v8, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v10, v7, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    sub-int v0, v8, v9

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v10, v0, v1}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v11, v0

    move v9, v8

    goto :goto_1
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    return-object v0
.end method

.method public static trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_4

    aget-object v1, v2, v0

    aget-object v3, v2, v0

    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    check-cast v3, Landroid/text/style/CharacterStyle;

    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    :cond_0
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/text/ParcelableSpan;

    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v6

    if-lt v6, v11, :cond_1

    const/16 v7, 0x1a

    if-le v6, v7, :cond_3

    :cond_1
    const-string/jumbo v7, "TextUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "External class \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " interface"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void

    :cond_5
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
