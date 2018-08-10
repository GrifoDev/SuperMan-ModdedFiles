.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final DATE_TIME_FORMAT_SYMBOLS:Ljava/lang/String; = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

.field private static final SINGLE_QUOTE:C = '\''


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method static addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    iget-object v0, v4, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    const/4 v3, 0x0

    :goto_1
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method static addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    return v3

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method static addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/16 v7, 0x27

    const/4 v6, -0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    if-ne v0, v7, :cond_3

    xor-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v6, :cond_2

    const-string/jumbo v4, "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_4

    return v5

    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    return v4
.end method

.method static addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    invoke-static {p0, p1, v2, p3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method static collectionToArray(Ljava/util/Collection;)[C
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [C

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v4, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method protected static ok([CC)Z
    .locals 3

    const/4 v2, 0x0

    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    const/4 v1, 0x0

    move v3, p2

    :goto_0
    if-ge v3, p3, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-ne v3, p3, :cond_2

    const/4 v6, 0x0

    return-object v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sub-int v6, p3, p2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const-string/jumbo v6, ""

    return-object v6

    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    sub-int/2addr v3, p2

    sub-int/2addr p3, p2

    sub-int v5, p3, p2

    add-int/lit8 v4, p3, -0x1

    :goto_1
    if-lt v4, v3, :cond_5

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method protected abstract getAcceptedChars()[C
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 2

    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2, p1}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v7, 0x30

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ltz v5, :cond_0

    if-gez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p2, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    :goto_0
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    :goto_1
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    if-eq v5, v4, :cond_2

    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v8

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    if-ne v2, v7, :cond_6

    if-ne v3, v8, :cond_6

    if-ne v5, v4, :cond_6

    if-lez v4, :cond_6

    add-int/lit8 v6, v5, -0x1

    invoke-interface {p2, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v5, -0x1

    const/16 v7, 0x2b

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v8

    :cond_6
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    return v6
.end method
