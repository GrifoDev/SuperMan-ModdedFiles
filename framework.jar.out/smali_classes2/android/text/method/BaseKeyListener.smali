.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final synthetic -android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I = null

.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method private static synthetic -getandroid-text-method-TextKeyListener$CapitalizeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .locals 6

    instance-of v4, p0, Landroid/text/Spanned;

    if-nez v4, :cond_0

    return p1

    :cond_0
    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, p1, p1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, p1, :cond_1

    if-le v0, p1, :cond_1

    if-eqz p2, :cond_2

    move p1, v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, -0x70f4

    invoke-static {v6}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v6

    if-nez v6, :cond_0

    return v9

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v8

    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {p2, v8, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v6

    if-ne v6, v8, :cond_4

    const/4 v3, 0x1

    :goto_1
    const/4 v6, 0x2

    invoke-static {p2, v6, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v6

    if-ne v6, v8, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-eqz v2, :cond_7

    if-nez v1, :cond_2

    if-eqz v3, :cond_6

    :cond_2
    return v9

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v6

    return v6

    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v8

    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-eqz p5, :cond_b

    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    :goto_3
    invoke-static {p2, v5, v4}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v0

    :goto_4
    if-eq v5, v0, :cond_c

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v8

    :cond_9
    iget-object v7, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v6, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_a

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sput-object v6, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    :cond_a
    sget-object v4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    goto :goto_3

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_b
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_4

    :cond_c
    return v9
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-ge v0, v1, :cond_0

    move v2, v0

    move v0, v1

    move v1, v2

    :cond_0
    if-eq v1, v0, :cond_1

    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-eq v0, v4, :cond_0

    return v5

    :cond_0
    if-nez p3, :cond_2

    if-nez v0, :cond_2

    :cond_1
    return v5

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    if-eq v0, v4, :cond_1

    :cond_3
    const/4 v3, 0x0

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    :cond_5
    if-eqz p3, :cond_7

    move v1, v0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, p2, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    :cond_6
    :goto_0
    invoke-interface {p2, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v4, 0x1

    return v4

    :cond_7
    move v2, v0

    invoke-virtual {v3, p2, v5, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v1

    if-ne v1, v6, :cond_6

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .locals 25

    const/16 v22, 0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    const/16 v22, 0x0

    return v22

    :cond_0
    const/16 v16, 0x0

    const/4 v14, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x3

    const/4 v4, 0x4

    const/4 v7, 0x5

    const/4 v6, 0x6

    const/4 v3, 0x7

    const/16 v10, 0x8

    const/16 v9, 0x9

    const/16 v15, 0xa

    const/16 v11, 0xb

    const/16 v13, 0xc

    const/16 v12, 0xd

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, p1

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    sub-int v21, v21, v22

    packed-switch v20, :pswitch_data_0

    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "state "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " is unknown"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :pswitch_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v18

    const/16 v22, 0xa

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    :goto_0
    if-lez v21, :cond_2

    const/16 v22, 0xd

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    :cond_2
    sub-int v22, p1, v18

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v22

    return v22

    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v20, 0x6

    goto :goto_0

    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v20, 0xa

    goto :goto_0

    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v20, 0x4

    goto :goto_0

    :cond_6
    sget v22, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v20, 0x2

    goto :goto_0

    :cond_7
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v20, 0x7

    goto :goto_0

    :cond_8
    sget v22, Landroid/text/Emoji;->CANCEL_TAG:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/16 v20, 0xc

    goto :goto_0

    :cond_9
    const/16 v20, 0xd

    goto :goto_0

    :pswitch_1
    const/16 v22, 0xd

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    add-int/lit8 v18, v18, 0x1

    :cond_a
    const/16 v20, 0xd

    goto :goto_0

    :pswitch_2
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_b

    add-int/lit8 v18, v18, 0x2

    const/16 v20, 0xb

    goto :goto_0

    :cond_b
    const/16 v20, 0xd

    goto :goto_0

    :pswitch_3
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_c

    add-int/lit8 v18, v18, -0x2

    const/16 v20, 0xa

    goto :goto_0

    :cond_c
    const/16 v20, 0xd

    goto :goto_0

    :pswitch_4
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    const/16 v20, 0x3

    goto/16 :goto_0

    :cond_d
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    :cond_e
    const/16 v20, 0xd

    goto/16 :goto_0

    :pswitch_5
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v22, v22, v19

    add-int v18, v18, v22

    :cond_f
    const/16 v20, 0xd

    goto/16 :goto_0

    :pswitch_6
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    const/16 v20, 0x5

    goto/16 :goto_0

    :cond_10
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    :cond_11
    const/16 v20, 0xd

    goto/16 :goto_0

    :pswitch_7
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v22, v22, v19

    add-int v18, v18, v22

    :cond_12
    const/16 v20, 0xd

    goto/16 :goto_0

    :pswitch_8
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    const/16 v20, 0x7

    goto/16 :goto_0

    :cond_13
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-nez v22, :cond_14

    invoke-static/range {v17 .. v17}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v22

    if-nez v22, :cond_14

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    :cond_14
    const/16 v20, 0xd

    goto/16 :goto_0

    :pswitch_9
    sget v22, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    const/16 v20, 0x8

    goto/16 :goto_0

    :cond_15
    const/16 v20, 0xd

    goto/16 :goto_0

    :pswitch_a
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    add-int v18, v18, v22

    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v22

    if-eqz v22, :cond_16

    const/16 v20, 0x4

    goto/16 :goto_0

    :cond_16
    const/16 v20, 0x7

    goto/16 :goto_0

    :cond_17
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_18

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    const/16 v20, 0x9

    goto/16 :goto_0

    :cond_18
    const/16 v20, 0xd

    goto/16 :goto_0

    :pswitch_b
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_19

    add-int/lit8 v22, v19, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v23

    add-int v22, v22, v23

    add-int v18, v18, v22

    const/16 v19, 0x0

    const/16 v20, 0x7

    goto/16 :goto_0

    :cond_19
    const/16 v20, 0xd

    goto/16 :goto_0

    :pswitch_c
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v22

    if-eqz v22, :cond_1a

    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_0

    :cond_1a
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    const/16 v20, 0xd

    goto/16 :goto_0

    :cond_1b
    const/16 v18, 0x2

    const/16 v20, 0xd

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 7

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    if-lt p1, v0, :cond_0

    return v3

    :cond_0
    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move v5, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result p1

    invoke-static {p0, p1, v4}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static isVariationSelector(I)Z
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Landroid/text/method/BaseKeyListener;->-getandroid-text-method-TextKeyListener$CapitalizeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz p1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    return v0

    :pswitch_0
    const/16 v0, 0x1001

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2001

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x4001

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2

    sparse-switch p3, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    const/4 v1, 0x1

    return v1

    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-ge v0, v1, :cond_2

    move v2, v0

    move v0, v1

    move v1, v2

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return v6

    :cond_3
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v4, 0x1

    return v4
.end method
