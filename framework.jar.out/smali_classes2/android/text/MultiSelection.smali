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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 326
    new-instance v0, Landroid/text/MultiSelection$START;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$START;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    .line 327
    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$END;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    .line 329
    sput-boolean v1, Landroid/text/MultiSelection;->mIsSelecting:Z

    .line 330
    sput-boolean v1, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    .line 331
    sput-boolean v1, Landroid/text/MultiSelection;->mNeedToScroll:Z

    .line 332
    const/4 v0, -0x1

    sput v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addMultiSelection(Landroid/text/Spannable;II)V
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    const/4 v2, 0x0

    .line 170
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    .line 172
    :cond_1
    new-instance v1, Landroid/text/MultiSelection$START;

    invoke-direct {v1, v2}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$START;)V

    .line 173
    .local v1, "penStart":Ljava/lang/Object;
    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$END;)V

    .line 176
    .local v0, "penEnd":Ljava/lang/Object;
    const/16 v2, 0x222

    .line 175
    invoke-interface {p0, v1, p1, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 178
    const/16 v2, 0x22

    .line 177
    invoke-interface {p0, v0, p2, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 168
    return-void
.end method

.method public static final clearMultiSelection(Landroid/text/Spannable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    const/4 v5, 0x0

    .line 208
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$START;

    .line 209
    .local v2, "spansStarts":[Landroid/text/MultiSelection$START;
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    .line 211
    .local v1, "spansEnds":[Landroid/text/MultiSelection$END;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 212
    aget-object v3, v2, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 213
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public static final getHoveredIcon()I
    .locals 1

    .prologue
    .line 300
    sget v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return v0
.end method

.method public static final getIsMultiSelectingText()Z
    .locals 1

    .prologue
    .line 267
    sget-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return v0
.end method

.method public static final getMultiSelectionCount(Landroid/text/Spannable;)I
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 250
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/MultiSelection$START;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    .line 251
    .local v0, "spans":[Landroid/text/MultiSelection$START;
    array-length v1, v0

    return v1
.end method

.method public static final getMultiSelectionEnd(Landroid/text/Spannable;)[I
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 236
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$END;

    const/4 v5, 0x0

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$END;

    .line 237
    .local v2, "spans":[Landroid/text/MultiSelection$END;
    array-length v3, v2

    new-array v0, v3, [I

    .line 239
    .local v0, "ends":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 240
    aget-object v3, v2, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-object v0
.end method

.method public static final getMultiSelectionStart(Landroid/text/Spannable;)[I
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 222
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$START;

    const/4 v5, 0x0

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$START;

    .line 223
    .local v1, "spans":[Landroid/text/MultiSelection$START;
    array-length v3, v1

    new-array v2, v3, [I

    .line 225
    .local v2, "starts":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 226
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-object v2
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 57
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 45
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final isNeedToScroll()Z
    .locals 1

    .prologue
    .line 316
    sget-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return v0
.end method

.method public static final isTextViewHovered()Z
    .locals 1

    .prologue
    .line 292
    sget-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    return v0
.end method

.method public static final removeCurSelection(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 152
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 153
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public static final removeMultiSelection(Landroid/text/Spannable;II)Z
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    const-class v3, Landroid/text/MultiSelection$START;

    invoke-interface {p0, p1, p1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$START;

    .line 187
    .local v2, "spansStarts":[Landroid/text/MultiSelection$START;
    const-class v3, Landroid/text/MultiSelection$END;

    invoke-interface {p0, p2, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    .line 188
    .local v1, "spansEnds":[Landroid/text/MultiSelection$END;
    const/4 v0, 0x1

    .line 190
    .local v0, "ret":Z
    array-length v3, v2

    if-ne v3, v5, :cond_0

    .line 191
    aget-object v3, v2, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 195
    :goto_0
    array-length v3, v1

    if-ne v3, v5, :cond_1

    .line 196
    aget-object v3, v1, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 200
    :goto_1
    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 161
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 160
    return-void
.end method

.method public static final setIsMultiSelectingText(Z)V
    .locals 0
    .param p0, "bSelecting"    # Z

    .prologue
    .line 259
    sput-boolean p0, Landroid/text/MultiSelection;->mIsSelecting:Z

    .line 258
    return-void
.end method

.method public static final setNeedToScroll(Z)V
    .locals 0
    .param p0, "bflag"    # Z

    .prologue
    .line 308
    sput-boolean p0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    .line 307
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 22
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 75
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ltz p2, :cond_0

    .line 77
    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 78
    .local v17, "ostart":I
    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v16

    .line 83
    .local v16, "oend":I
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 84
    .local v6, "len":I
    if-lez p1, :cond_5

    move/from16 v0, p1

    if-ge v0, v6, :cond_5

    .line 85
    :cond_2
    const/4 v15, 0x0

    .line 87
    .local v15, "needCheckPosition":Z
    if-lez p1, :cond_3

    move/from16 v0, p1

    if-ge v0, v6, :cond_3

    .line 88
    invoke-interface/range {p0 .. p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v18

    .line 89
    .local v18, "startChar":C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 90
    add-int/lit8 p1, p1, 0x1

    .line 97
    .end local v18    # "startChar":C
    :cond_3
    :goto_0
    if-lez p2, :cond_4

    move/from16 v0, p2

    if-ge v0, v6, :cond_4

    .line 98
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v21

    .line 99
    .local v21, "stopChar":C
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 100
    add-int/lit8 p2, p2, 0x1

    .line 109
    .end local v21    # "stopChar":C
    :cond_4
    :goto_1
    if-eqz v15, :cond_6

    .line 110
    new-array v10, v6, [F

    .line 111
    .local v10, "widths":[F
    new-array v4, v6, [C

    .line 112
    .local v4, "chars":[C
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 114
    .local v3, "p":Landroid/graphics/Paint;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 115
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v8, v6

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 117
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

    .line 118
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 84
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "chars":[C
    .end local v10    # "widths":[F
    .end local v15    # "needCheckPosition":Z
    :cond_5
    if-lez p2, :cond_6

    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    .line 126
    :cond_6
    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_7

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_10

    .line 127
    :cond_7
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/MultiSelection$START;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v8, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/MultiSelection$START;

    .line 128
    .local v19, "startSpans":[Landroid/text/MultiSelection$START;
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/MultiSelection$END;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v8, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/MultiSelection$END;

    .line 130
    .local v12, "endSpans":[Landroid/text/MultiSelection$END;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v14, v5, :cond_f

    .line 131
    aget-object v5, v19, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 132
    .local v20, "starts":I
    aget-object v5, v12, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 134
    .local v13, "ends":I
    move/from16 v0, v20

    move/from16 v1, p1

    if-gt v0, v1, :cond_e

    move/from16 v0, p1

    if-ge v0, v13, :cond_e

    .line 135
    :goto_4
    aget-object v5, v19, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 136
    aget-object v5, v12, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 130
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 92
    .end local v12    # "endSpans":[Landroid/text/MultiSelection$END;
    .end local v13    # "ends":I
    .end local v14    # "i":I
    .end local v19    # "startSpans":[Landroid/text/MultiSelection$START;
    .end local v20    # "starts":I
    .restart local v15    # "needCheckPosition":Z
    .restart local v18    # "startChar":C
    :cond_9
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_a

    .line 93
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    .line 92
    if-nez v5, :cond_a

    .line 93
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    .line 92
    if-nez v5, :cond_a

    .line 93
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    .line 92
    if-eqz v5, :cond_3

    .line 94
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 102
    .end local v18    # "startChar":C
    .restart local v21    # "stopChar":C
    :cond_b
    if-nez v15, :cond_4

    .line 103
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_c

    .line 104
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    .line 103
    if-nez v5, :cond_c

    .line 104
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    .line 103
    if-nez v5, :cond_c

    .line 104
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    .line 102
    if-eqz v5, :cond_4

    .line 105
    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 120
    .end local v21    # "stopChar":C
    .restart local v3    # "p":Landroid/graphics/Paint;
    .restart local v4    # "chars":[C
    .restart local v10    # "widths":[F
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

    .line 121
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 134
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "chars":[C
    .end local v10    # "widths":[F
    .end local v15    # "needCheckPosition":Z
    .restart local v12    # "endSpans":[Landroid/text/MultiSelection$END;
    .restart local v13    # "ends":I
    .restart local v14    # "i":I
    .restart local v19    # "startSpans":[Landroid/text/MultiSelection$START;
    .restart local v20    # "starts":I
    :cond_e
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    move/from16 v0, p2

    if-gt v0, v13, :cond_8

    goto :goto_4

    .line 140
    .end local v13    # "ends":I
    .end local v20    # "starts":I
    :cond_f
    sget-object v5, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    .line 141
    const/16 v7, 0x222

    .line 140
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p1

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 142
    sget-object v5, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    .line 143
    const/16 v7, 0x22

    .line 142
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 73
    .end local v12    # "endSpans":[Landroid/text/MultiSelection$END;
    .end local v14    # "i":I
    .end local v19    # "startSpans":[Landroid/text/MultiSelection$START;
    :cond_10
    return-void
.end method

.method public static final setTextViewHovered(Z)V
    .locals 1
    .param p0, "bSelecting"    # Z

    .prologue
    .line 275
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    .line 274
    return-void
.end method

.method public static final setTextViewHovered(ZI)V
    .locals 0
    .param p0, "bSelecting"    # Z
    .param p1, "type"    # I

    .prologue
    .line 283
    sput-boolean p0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    .line 284
    sput p1, Landroid/text/MultiSelection;->mHoveredIcon:I

    .line 282
    return-void
.end method
