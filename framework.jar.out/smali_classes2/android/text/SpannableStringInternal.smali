.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    :goto_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    check-cast p1, Landroid/text/Spanned;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;II)V

    goto :goto_1
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4

    if-ge p3, p2, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method private final copySpans(Landroid/text/SpannableStringInternal;II)V
    .locals 12

    const/4 v11, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v8

    if-ne p3, v8, :cond_1

    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v8, v8

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v8, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput v8, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v9, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v10, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v10, v10

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v9, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v10, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v10, v10

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v6, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v3, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x0

    aget v5, v6, v8

    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    aget v4, v6, v8

    invoke-direct {p0, p2, p3, v5, v4}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v7, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget v8, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x3

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v1, v3, :cond_0

    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x0

    aget v5, v6, v8

    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    aget v4, v6, v8

    invoke-direct {p0, p2, p3, v5, v4}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-ge v5, p2, :cond_6

    move v5, p2

    :cond_6
    if-le v4, p3, :cond_7

    move v4, p3

    :cond_7
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v9, v7, v1

    aput-object v9, v8, v2

    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x0

    sub-int v10, v5, p2

    aput v10, v8, v9

    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x1

    sub-int v10, v4, p2

    aput v10, v8, v9

    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x2

    mul-int/lit8 v10, v1, 0x3

    add-int/lit8 v10, v10, 0x2

    aget v10, v6, v10

    aput v10, v8, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private final copySpans(Landroid/text/Spanned;II)V
    .locals 10

    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    const/4 v7, 0x0

    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_2

    aget-object v0, v8, v7

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    aget-object v0, v8, v7

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    aget-object v0, v8, v7

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-ge v9, p2, :cond_0

    move v9, p2

    :cond_0
    if-le v6, p3, :cond_1

    move v6, p3

    :cond_1
    aget-object v1, v8, v7

    sub-int v2, v9, p2

    sub-int v3, v6, p2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isIndexFollowsNextLine(I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    if-eq p1, v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final isOutOfCopyRange(IIII)Z
    .locals 1

    const/4 v0, 0x1

    if-gt p3, p2, :cond_0

    if-ge p4, p1, :cond_1

    :cond_0
    return v0

    :cond_1
    if-eq p3, p4, :cond_3

    if-eq p1, p2, :cond_3

    if-eq p3, p2, :cond_2

    if-ne p4, p1, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5

    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v2, v0

    move-object v3, p0

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v9, v7

    move-object v1, p0

    check-cast v1, Landroid/text/Spannable;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5

    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v2, v0

    move-object v3, p0

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSpan(Ljava/lang/Object;IIIZ)V
    .locals 17

    move/from16 v15, p2

    move/from16 v12, p3

    const-string/jumbo v3, "setSpan"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v3, p4, 0x33

    const/16 v4, 0x33

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p5, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " follows "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, p2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p5, :cond_2

    return-void

    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " follows "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_5

    aget-object v3, v16, v11

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_4

    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x0

    aget v5, v10, v3

    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v6, v10, v3

    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x0

    aput p2, v10, v3

    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x1

    aput p3, v10, v3

    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x2

    aput p4, v10, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    return-void

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v3}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v14

    array-length v3, v14

    mul-int/lit8 v3, v3, 0x3

    new-array v13, v3, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v7, v14, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v7, v13, v8, v4}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object p1, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x0

    aput p2, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    aput p3, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x2

    aput p4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v6, v3

    if-ne v5, v6, :cond_7

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v0, v5, :cond_6

    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v4, v5, v0

    aget-object v2, v3, v0

    if-ne v4, p0, :cond_3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    return v7

    :cond_1
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_5

    :cond_4
    :goto_1
    return v7

    :cond_5
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    return v5

    :cond_7
    return v7
.end method

.method public final getChars(II[CI)V
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v1, v4

    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v1, v4

    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    move v3, v2

    :goto_0
    if-ge v5, v12, :cond_a

    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x0

    aget v14, v4, v16

    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x1

    aget v13, v4, v16

    move/from16 v0, p2

    if-le v14, v0, :cond_0

    move v2, v3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    if-ge v13, v0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    if-eq v14, v13, :cond_3

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_3

    move/from16 v0, p2

    if-ne v14, v0, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move/from16 v0, p1

    if-ne v13, v0, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    const-class v16, Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_4

    aget-object v16, v15, v5

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    aget-object v11, v15, v5

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_6

    sub-int v16, v12, v5

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v10, v16

    :cond_6
    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x2

    aget v16, v4, v16

    const/high16 v17, 0xff0000

    and-int v9, v16, v17

    if-eqz v9, :cond_9

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_7

    aget-object v16, v10, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v16

    const/high16 v17, 0xff0000

    and-int v8, v16, v17

    if-le v9, v8, :cond_8

    :cond_7
    add-int/lit8 v16, v6, 0x1

    sub-int v17, v3, v6

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v6, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v16, v15, v5

    aput-object v16, v10, v6

    add-int/lit8 v2, v3, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v3, 0x1

    aget-object v16, v15, v5

    aput-object v16, v10, v3

    goto/16 :goto_1

    :cond_a
    if-nez v3, :cond_b

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    return-object v16

    :cond_b
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_c

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v10, v16

    return-object v10

    :cond_c
    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v3, v0, :cond_d

    return-object v10

    :cond_d
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v0, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v7
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int v0, v3, v4

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v3, v1

    if-eq v2, p0, :cond_0

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 7

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    if-nez p3, :cond_0

    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v5, v1, v6

    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v2, v1, v6

    if-le v5, p1, :cond_1

    if-ge v5, p2, :cond_1

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move p2, v5

    :cond_1
    if-le v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move p2, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 10

    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v7, v6, v3

    if-ne v7, p1, :cond_0

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v5, v2, v7

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v4, v2, v7

    add-int/lit8 v7, v3, 0x1

    sub-int v0, v1, v7

    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v0, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
