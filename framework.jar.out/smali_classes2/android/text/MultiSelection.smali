.class public Landroid/text/MultiSelection;
.super Ljava/lang/Object;
.source "MultiSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MultiSelection$END;,
        Landroid/text/MultiSelection$START;
    }
.end annotation


# static fields
.field public static final CURRENT_SELECTION_END:Ljava/lang/Object;

.field public static final CURRENT_SELECTION_START:Ljava/lang/Object;

.field private static mHoveredIcon:I

.field private static mIsSelecting:Z

.field private static mIsTextViewHovered:Z

.field private static mNeedToScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/text/MultiSelection$START;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$START;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$END;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    sput-boolean v1, Landroid/text/MultiSelection;->mIsSelecting:Z

    sput-boolean v1, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    sput-boolean v1, Landroid/text/MultiSelection;->mNeedToScroll:Z

    const/4 v0, -0x1

    sput v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addMultiSelection(Landroid/text/Spannable;II)V
    .locals 3

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/text/MultiSelection$START;

    invoke-direct {v1, v2}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$START;)V

    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$END;)V

    const/16 v2, 0x222

    invoke-interface {p0, v1, p1, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/16 v2, 0x22

    invoke-interface {p0, v0, p2, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static final clearMultiSelection(Landroid/text/Spannable;)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$START;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final getHoveredIcon()I
    .locals 1

    sget v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return v0
.end method

.method public static final getIsMultiSelectingText()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return v0
.end method

.method public static final getMultiSelectionCount(Landroid/text/Spannable;)I
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/MultiSelection$START;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    array-length v1, v0

    return v1
.end method

.method public static final getMultiSelectionEnd(Landroid/text/Spannable;)[I
    .locals 6

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$END;

    const/4 v5, 0x0

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$END;

    array-length v3, v2

    new-array v0, v3, [I

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final getMultiSelectionStart(Landroid/text/Spannable;)[I
    .locals 6

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$START;

    const/4 v5, 0x0

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$START;

    array-length v3, v1

    new-array v2, v3, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final isNeedToScroll()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return v0
.end method

.method public static final isTextViewHovered()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    return v0
.end method

.method public static final removeCurSelection(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static final removeMultiSelection(Landroid/text/Spannable;II)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v3, Landroid/text/MultiSelection$START;

    invoke-interface {p0, p1, p1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$START;

    const-class v3, Landroid/text/MultiSelection$END;

    invoke-interface {p0, p2, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    const/4 v0, 0x1

    array-length v3, v2

    if-ne v3, v5, :cond_0

    aget-object v3, v2, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :goto_0
    array-length v3, v1

    if-ne v3, v5, :cond_1

    aget-object v3, v1, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static final setIsMultiSelectingText(Z)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return-void
.end method

.method public static final setNeedToScroll(Z)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 22

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ltz p2, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v16

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v6

    if-lez p1, :cond_5

    move/from16 v0, p1

    if-ge v0, v6, :cond_5

    :cond_2
    const/4 v15, 0x0

    if-lez p1, :cond_3

    move/from16 v0, p1

    if-ge v0, v6, :cond_3

    invoke-interface/range {p0 .. p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 p1, p1, 0x1

    :cond_3
    :goto_0
    if-lez p2, :cond_4

    move/from16 v0, p2

    if-ge v0, v6, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 p2, p2, 0x1

    :cond_4
    :goto_1
    if-eqz v15, :cond_6

    new-array v10, v6, [F

    new-array v4, v6, [C

    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v8, v6

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    :goto_2
    move/from16 v0, p1

    if-ge v0, v6, :cond_d

    aget v5, v10, p1

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_d

    aget-char v5, v4, p1

    const/16 v7, 0xa

    if-eq v5, v7, :cond_d

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    if-lez p2, :cond_6

    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    :cond_6
    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_7

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_10

    :cond_7
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/MultiSelection$START;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v8, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/MultiSelection$START;

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/MultiSelection$END;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v8, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/MultiSelection$END;

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v14, v5, :cond_f

    aget-object v5, v19, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    aget-object v5, v12, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    move/from16 v0, v20

    move/from16 v1, p1

    if-gt v0, v1, :cond_e

    move/from16 v0, p1

    if-ge v0, v13, :cond_e

    :goto_4
    aget-object v5, v19, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v5, v12, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_9
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_b
    if-nez v15, :cond_4

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_5
    move/from16 v0, p2

    if-ge v0, v6, :cond_6

    aget v5, v10, p2

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_6

    aget-char v5, v4, p2

    const/16 v7, 0xa

    if-eq v5, v7, :cond_6

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    move/from16 v0, p2

    if-gt v0, v13, :cond_8

    goto :goto_4

    :cond_f
    sget-object v5, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    const/16 v7, 0x222

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p1

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v5, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    const/16 v7, 0x22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    return-void
.end method

.method public static final setTextViewHovered(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    return-void
.end method

.method public static final setTextViewHovered(ZI)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    sput p1, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method
