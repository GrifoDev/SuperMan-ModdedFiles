.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static INVALID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 271
    const/4 v0, -0x1

    sput v0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "input_method"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 76
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 77
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 73
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .param p1, "mgr"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 70
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 67
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1003
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, "sText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1005
    .local v1, "nIndex":I
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1006
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "ch":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    .end local v0    # "ch":Ljava/lang/CharSequence;
    :cond_0
    return-object v2
.end method

.method private convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0x300b

    const/16 v4, 0x300a

    const/16 v3, 0xbb

    const/16 v2, 0xab

    .line 1014
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "sText":Ljava/lang/String;
    const-string/jumbo v1, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1017
    const-string/jumbo v0, "}"

    .line 1041
    :cond_0
    :goto_0
    return-object v0

    .line 1018
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1019
    const-string/jumbo v0, "{"

    goto :goto_0

    .line 1020
    :cond_2
    const-string/jumbo v1, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1021
    const-string/jumbo v0, "]"

    goto :goto_0

    .line 1022
    :cond_3
    const-string/jumbo v1, "]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1023
    const-string/jumbo v0, "["

    goto :goto_0

    .line 1024
    :cond_4
    const-string/jumbo v1, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1025
    const-string/jumbo v0, ">"

    goto :goto_0

    .line 1026
    :cond_5
    const-string/jumbo v1, ">"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1027
    const-string/jumbo v0, "<"

    goto :goto_0

    .line 1028
    :cond_6
    const-string/jumbo v1, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1029
    const-string/jumbo v0, ")"

    goto :goto_0

    .line 1030
    :cond_7
    const-string/jumbo v1, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1031
    const-string/jumbo v0, "("

    goto :goto_0

    .line 1032
    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1033
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1034
    :cond_9
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1035
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1036
    :cond_a
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1037
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1038
    :cond_b
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 743
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 745
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 746
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 752
    :goto_0
    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 754
    const/4 v4, 0x1

    new-array v4, v4, [I

    .line 755
    const v5, 0x1010230

    aput v5, v4, v6

    .line 753
    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 757
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 758
    .local v1, "style":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 759
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 760
    check-cast v3, Landroid/text/Spanned;

    .line 761
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    .line 760
    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 742
    .end local v1    # "style":Ljava/lang/CharSequence;
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 747
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 748
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    goto :goto_0

    .line 750
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    .local v0, "context":Landroid/content/Context;
    goto :goto_0
.end method

.method private static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .prologue
    const/4 v6, 0x0

    .line 274
    move v2, p1

    .line 275
    .local v2, "currentIndex":I
    const/4 v4, 0x0

    .line 276
    .local v4, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 277
    .local v0, "N":I
    if-ltz p1, :cond_0

    if-ge v0, p1, :cond_1

    .line 278
    :cond_0
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 280
    :cond_1
    if-gez p2, :cond_2

    .line 281
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 283
    :cond_2
    move v3, p2

    .line 285
    .local v3, "remainingCodePoints":I
    :goto_0
    if-nez v3, :cond_3

    .line 286
    return v2

    .line 289
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 290
    if-gez v2, :cond_5

    .line 291
    if-eqz v4, :cond_4

    .line 292
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 294
    :cond_4
    return v6

    .line 296
    :cond_5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 297
    .local v1, "c":C
    if-eqz v4, :cond_7

    .line 298
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 299
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 301
    :cond_6
    const/4 v4, 0x0

    .line 302
    add-int/lit8 v3, v3, -0x1

    .line 303
    goto :goto_0

    .line 305
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_8

    .line 306
    add-int/lit8 v3, v3, -0x1

    .line 307
    goto :goto_0

    .line 309
    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 310
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 312
    :cond_9
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .prologue
    .line 318
    move v2, p1

    .line 319
    .local v2, "currentIndex":I
    const/4 v4, 0x0

    .line 320
    .local v4, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 321
    .local v0, "N":I
    if-ltz p1, :cond_0

    if-ge v0, p1, :cond_1

    .line 322
    :cond_0
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 324
    :cond_1
    if-gez p2, :cond_2

    .line 325
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 327
    :cond_2
    move v3, p2

    .line 330
    .local v3, "remainingCodePoints":I
    :goto_0
    if-nez v3, :cond_3

    .line 331
    return v2

    .line 334
    :cond_3
    if-lt v2, v0, :cond_5

    .line 335
    if-eqz v4, :cond_4

    .line 336
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 338
    :cond_4
    return v0

    .line 340
    :cond_5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 341
    .local v1, "c":C
    if-eqz v4, :cond_7

    .line 342
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 343
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 345
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 346
    const/4 v4, 0x0

    .line 347
    add-int/lit8 v2, v2, 0x1

    .line 348
    goto :goto_0

    .line 350
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_8

    .line 351
    add-int/lit8 v3, v3, -0x1

    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 353
    goto :goto_0

    .line 355
    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 356
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 358
    :cond_9
    const/4 v4, 0x1

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 128
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 124
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private isAllBracketChars(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 989
    const-string/jumbo v0, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    .line 990
    .local v0, "BRACKET":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "sText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 992
    .local v2, "nIndex":I
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 993
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "ch":Ljava/lang/CharSequence;
    const-string/jumbo v4, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 995
    const/4 v4, 0x0

    return v4

    .line 997
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    .end local v1    # "ch":Ljava/lang/CharSequence;
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method private isRTLText(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "sCurStr"    # Ljava/lang/String;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 862
    const/16 v3, 0xa

    .line 863
    .local v3, "PARA":C
    const/4 v1, -0x1

    .line 864
    .local v1, "DIRECTION_NONE":I
    const/4 v0, 0x0

    .line 865
    .local v0, "DIRECTION_LTR":I
    const/4 v2, 0x1

    .line 866
    .local v2, "DIRECTION_RTL":I
    const/4 v6, -0x1

    .line 867
    .local v6, "nDirection":I
    const/4 v7, 0x0

    .line 868
    .local v7, "nIndex":I
    const/4 v8, -0x1

    .line 870
    .local v8, "nLastEnterPos":I
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_19

    .line 871
    if-eqz p2, :cond_0

    .line 872
    const/16 v9, 0xa

    add-int/lit8 v10, p2, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v8

    .line 875
    :cond_0
    if-gez v8, :cond_6

    .line 876
    const/4 v8, 0x0

    .line 881
    :goto_0
    move v7, v8

    .line 882
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 883
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 884
    .local v4, "ch":C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_7

    .line 903
    .end local v4    # "ch":C
    :cond_1
    :goto_2
    move v7, p2

    .line 904
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 905
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 906
    .restart local v4    # "ch":C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_c

    .line 923
    .end local v4    # "ch":C
    :cond_2
    :goto_4
    const/4 v9, -0x1

    if-ne v6, v9, :cond_5

    .line 924
    add-int/lit8 v7, p2, -0x1

    .line 925
    :goto_5
    if-ltz v7, :cond_3

    .line 926
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 927
    .restart local v4    # "ch":C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_f

    .line 947
    .end local v4    # "ch":C
    :cond_3
    :goto_6
    const/4 v9, -0x1

    if-ne v6, v9, :cond_4

    .line 948
    move v7, p2

    .line 949
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 950
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 951
    .restart local v4    # "ch":C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_14

    .line 971
    .end local v4    # "ch":C
    :cond_4
    :goto_8
    const/4 v9, -0x1

    if-ne v6, v9, :cond_5

    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 972
    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 973
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->isRtlLanguage()Z

    move-result v9

    .line 971
    if-eqz v9, :cond_5

    .line 974
    const/4 v6, 0x1

    .line 982
    :cond_5
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1b

    .line 983
    const/4 v9, 0x1

    return v9

    .line 878
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 886
    .restart local v4    # "ch":C
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 888
    .local v5, "directionality":B
    if-eqz v5, :cond_8

    .line 889
    const/16 v9, 0xe

    if-ne v5, v9, :cond_9

    .line 891
    :cond_8
    const/4 v6, 0x0

    .line 892
    goto :goto_2

    .line 890
    :cond_9
    const/16 v9, 0xf

    if-eq v5, v9, :cond_8

    .line 893
    const/4 v9, 0x1

    if-eq v5, v9, :cond_a

    .line 894
    const/4 v9, 0x2

    if-ne v5, v9, :cond_b

    .line 897
    :cond_a
    const/4 v6, 0x1

    .line 898
    goto :goto_2

    .line 895
    :cond_b
    const/16 v9, 0x10

    if-eq v5, v9, :cond_a

    .line 896
    const/16 v9, 0x11

    if-eq v5, v9, :cond_a

    .line 900
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 908
    .end local v5    # "directionality":B
    :cond_c
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 909
    .restart local v5    # "directionality":B
    if-eqz v5, :cond_d

    .line 910
    const/16 v9, 0xe

    if-ne v5, v9, :cond_e

    .line 917
    :cond_d
    const/4 v6, -0x1

    .line 918
    goto :goto_4

    .line 911
    :cond_e
    const/16 v9, 0xf

    if-eq v5, v9, :cond_d

    .line 912
    const/4 v9, 0x1

    if-eq v5, v9, :cond_d

    .line 913
    const/4 v9, 0x2

    if-eq v5, v9, :cond_d

    .line 914
    const/16 v9, 0x10

    if-eq v5, v9, :cond_d

    .line 915
    const/16 v9, 0x11

    if-eq v5, v9, :cond_d

    .line 916
    const/4 v9, 0x3

    if-eq v5, v9, :cond_d

    .line 920
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 929
    .end local v5    # "directionality":B
    :cond_f
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 931
    .restart local v5    # "directionality":B
    if-eqz v5, :cond_10

    .line 932
    const/16 v9, 0xe

    if-ne v5, v9, :cond_11

    .line 934
    :cond_10
    const/4 v6, 0x0

    .line 935
    goto/16 :goto_6

    .line 933
    :cond_11
    const/16 v9, 0xf

    if-eq v5, v9, :cond_10

    .line 937
    const/4 v9, 0x1

    if-eq v5, v9, :cond_12

    .line 938
    const/4 v9, 0x2

    if-ne v5, v9, :cond_13

    .line 941
    :cond_12
    const/4 v6, 0x1

    .line 942
    goto/16 :goto_6

    .line 939
    :cond_13
    const/16 v9, 0x10

    if-eq v5, v9, :cond_12

    .line 940
    const/16 v9, 0x11

    if-eq v5, v9, :cond_12

    .line 944
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_5

    .line 953
    .end local v5    # "directionality":B
    :cond_14
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 955
    .restart local v5    # "directionality":B
    if-eqz v5, :cond_15

    .line 956
    const/16 v9, 0xe

    if-ne v5, v9, :cond_16

    .line 958
    :cond_15
    const/4 v6, 0x0

    .line 959
    goto/16 :goto_8

    .line 957
    :cond_16
    const/16 v9, 0xf

    if-eq v5, v9, :cond_15

    .line 961
    const/4 v9, 0x1

    if-eq v5, v9, :cond_17

    .line 962
    const/4 v9, 0x2

    if-ne v5, v9, :cond_18

    .line 965
    :cond_17
    const/4 v6, 0x1

    .line 966
    goto/16 :goto_8

    .line 963
    :cond_18
    const/16 v9, 0x10

    if-eq v5, v9, :cond_17

    .line 964
    const/16 v9, 0x11

    if-eq v5, v9, :cond_17

    .line 968
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 977
    .end local v4    # "ch":C
    .end local v5    # "directionality":B
    :cond_19
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->isRtlLanguage()Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 978
    :cond_1a
    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 979
    const/4 v9, 0x1

    return v9

    .line 985
    :cond_1b
    const/4 v9, 0x0

    return v9
.end method

.method private isRtlLanguage()Z
    .locals 2

    .prologue
    .line 1044
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "curLanguage":Ljava/lang/String;
    const-string/jumbo v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1046
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1047
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    const/4 v5, 0x0

    .line 81
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 82
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 83
    .local v2, "sps":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 84
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 85
    aget-object v1, v2, v0

    .line 86
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 84
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x0

    .line 769
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 770
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    .line 771
    return-void

    .line 774
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 777
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 778
    .local v0, "a":I
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 782
    .local v1, "b":I
    if-ge v1, v0, :cond_1

    .line 783
    move v5, v0

    .line 784
    .local v5, "tmp":I
    move v0, v1

    .line 785
    move v1, v5

    .line 788
    .end local v5    # "tmp":I
    :cond_1
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    .line 789
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 802
    :cond_2
    :goto_0
    if-eqz p3, :cond_8

    .line 803
    const/4 v4, 0x0

    .line 804
    .local v4, "sp":Landroid/text/Spannable;
    instance-of v6, p1, Landroid/text/Spannable;

    if-nez v6, :cond_6

    .line 805
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4    # "sp":Landroid/text/Spannable;
    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 806
    .local v4, "sp":Landroid/text/Spannable;
    move-object p1, v4

    .line 807
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 808
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_7

    .line 809
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 810
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v7

    .line 811
    const/16 v8, 0x121

    .line 810
    invoke-interface {v4, v6, v9, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 809
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 791
    .end local v3    # "i":I
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_3
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 792
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 793
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 794
    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    .line 795
    :cond_5
    if-ge v1, v0, :cond_2

    .line 796
    move v5, v0

    .line 797
    .restart local v5    # "tmp":I
    move v0, v1

    .line 798
    move v1, v5

    goto :goto_0

    .end local v5    # "tmp":I
    .local v4, "sp":Landroid/text/Spannable;
    :cond_6
    move-object v4, p1

    .line 815
    check-cast v4, Landroid/text/Spannable;

    .line 817
    .local v4, "sp":Landroid/text/Spannable;
    :cond_7
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 836
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_c

    .line 837
    add-int/lit8 v6, v1, -0x1

    add-int/2addr p2, v6

    .line 841
    :goto_2
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 842
    :cond_9
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_a

    .line 843
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 844
    :cond_a
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 846
    invoke-direct {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->isAllBracketChars(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/inputmethod/BaseInputConnection;->isRTLText(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 847
    invoke-direct {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 850
    :cond_b
    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 858
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 768
    return-void

    .line 839
    :cond_c
    add-int/2addr p2, v0

    goto :goto_2
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 704
    iget-boolean v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v2, :cond_0

    .line 705
    return-void

    .line 708
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 709
    .local v8, "content":Landroid/text/Editable;
    if-eqz v8, :cond_5

    .line 710
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v0

    .line 711
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 712
    return-void

    .line 714
    :cond_1
    if-ne v0, v3, :cond_4

    .line 717
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v2, :cond_2

    .line 718
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 720
    :cond_2
    new-array v7, v3, [C

    .line 721
    .local v7, "chars":[C
    invoke-interface {v8, v6, v3, v7, v6}, Landroid/text/Editable;->getChars(II[CI)V

    .line 722
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 723
    .local v9, "events":[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    .line 724
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v2, v9

    if-ge v10, v2, :cond_3

    .line 726
    aget-object v2, v9, v10

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 724
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 728
    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 729
    return-void

    .line 735
    .end local v7    # "chars":[C
    .end local v9    # "events":[Landroid/view/KeyEvent;
    .end local v10    # "i":I
    :cond_4
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 736
    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 735
    invoke-direct/range {v1 .. v6}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 737
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 738
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 703
    .end local v0    # "N":I
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_5
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 94
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 93
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x121

    .line 99
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 100
    .local v3, "sps":[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 101
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 102
    aget-object v2, v3, v1

    .line 103
    .local v2, "o":Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 104
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 101
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 109
    .local v0, "fl":I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    .line 111
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 112
    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    .line 111
    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 119
    .end local v0    # "fl":I
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 174
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 175
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 176
    const/4 v1, 0x1

    return v1
.end method

.method public closeConnection()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 163
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 201
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 11
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 221
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 222
    .local v4, "content":Landroid/text/Editable;
    if-nez v4, :cond_0

    return v9

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 226
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 227
    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 229
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 230
    move v8, v0

    .line 231
    .local v8, "tmp":I
    move v0, v1

    .line 232
    move v1, v8

    .line 236
    .end local v8    # "tmp":I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 237
    .local v2, "ca":I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 238
    .local v3, "cb":I
    if-ge v3, v2, :cond_2

    .line 239
    move v8, v2

    .line 240
    .restart local v8    # "tmp":I
    move v2, v3

    .line 241
    move v3, v8

    .line 243
    .end local v8    # "tmp":I
    :cond_2
    if-eq v2, v10, :cond_4

    if-eq v3, v10, :cond_4

    .line 244
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 245
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 248
    :cond_4
    const/4 v5, 0x0

    .line 250
    .local v5, "deleted":I
    if-lez p1, :cond_6

    .line 251
    sub-int v7, v0, p1

    .line 252
    .local v7, "start":I
    if-gez v7, :cond_5

    const/4 v7, 0x0

    .line 253
    :cond_5
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 254
    sub-int v5, v0, v7

    .line 257
    .end local v7    # "start":I
    :cond_6
    if-lez p2, :cond_8

    .line 258
    sub-int/2addr v1, v5

    .line 260
    add-int v6, v1, p2

    .line 261
    .local v6, "end":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v6, v9, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 263
    :cond_7
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 266
    .end local v6    # "end":I
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 268
    const/4 v9, 0x1

    return v9
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 12
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 378
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 379
    .local v4, "content":Landroid/text/Editable;
    if-nez v4, :cond_0

    return v11

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 383
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 384
    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 386
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 387
    move v9, v0

    .line 388
    .local v9, "tmp":I
    move v0, v1

    .line 389
    move v1, v9

    .line 393
    .end local v9    # "tmp":I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 394
    .local v2, "ca":I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 395
    .local v3, "cb":I
    if-ge v3, v2, :cond_2

    .line 396
    move v9, v2

    .line 397
    .restart local v9    # "tmp":I
    move v2, v3

    .line 398
    move v3, v9

    .line 400
    .end local v9    # "tmp":I
    :cond_2
    if-eq v2, v10, :cond_4

    if-eq v3, v10, :cond_4

    .line 401
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 402
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 405
    :cond_4
    if-ltz v0, :cond_6

    if-ltz v1, :cond_6

    .line 406
    invoke-static {p1, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v4, v0, v10}, Landroid/view/inputmethod/BaseInputConnection;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result v8

    .line 407
    .local v8, "start":I
    sget v10, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v8, v10, :cond_6

    .line 408
    invoke-static {p2, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v4, v1, v10}, Landroid/view/inputmethod/BaseInputConnection;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 409
    .local v5, "end":I
    sget v10, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v5, v10, :cond_6

    .line 410
    sub-int v7, v0, v8

    .line 411
    .local v7, "numDeleteBefore":I
    if-lez v7, :cond_5

    .line 412
    invoke-interface {v4, v8, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 414
    :cond_5
    sub-int v6, v5, v1

    .line 415
    .local v6, "numDeleteAfter":I
    if-lez v6, :cond_6

    .line 416
    sub-int v10, v1, v7

    sub-int v11, v5, v7

    invoke-interface {v4, v10, v11}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 427
    .end local v5    # "end":I
    .end local v6    # "numDeleteAfter":I
    .end local v7    # "numDeleteBefore":I
    .end local v8    # "start":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 429
    const/4 v10, 0x1

    return v10
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 440
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 442
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 444
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 445
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 447
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .param p1, "reqModes"    # I

    .prologue
    const/4 v5, 0x0

    .line 456
    iget-boolean v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v4, :cond_0

    return v5

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 459
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_1

    return v5

    .line 461
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 462
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 464
    .local v1, "b":I
    if-le v0, v1, :cond_2

    .line 465
    move v3, v0

    .line 466
    .local v3, "tmp":I
    move v0, v1

    .line 467
    move v1, v3

    .line 470
    .end local v3    # "tmp":I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    return v4
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 140
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 516
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 517
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    return-object v4

    .line 519
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 520
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 522
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 523
    move v3, v0

    .line 524
    .local v3, "tmp":I
    move v0, v1

    .line 525
    move v1, v3

    .line 528
    .end local v3    # "tmp":I
    :cond_1
    if-ne v0, v1, :cond_2

    return-object v4

    .line 530
    :cond_2
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    .line 531
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 533
    :cond_3
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 541
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 542
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    return-object v4

    .line 544
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 545
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 547
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 548
    move v3, v0

    .line 549
    .local v3, "tmp":I
    move v0, v1

    .line 550
    move v1, v3

    .line 554
    .end local v3    # "tmp":I
    :cond_1
    if-gez v1, :cond_2

    .line 555
    const/4 v1, 0x0

    .line 558
    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 559
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 563
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 564
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 566
    :cond_4
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 485
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 486
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_0

    return-object v4

    .line 488
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 489
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 491
    .local v1, "b":I
    if-le v0, v1, :cond_1

    .line 492
    move v3, v0

    .line 493
    .local v3, "tmp":I
    move v0, v1

    .line 494
    move v1, v3

    .line 497
    .end local v3    # "tmp":I
    :cond_1
    if-gtz v0, :cond_2

    .line 498
    const-string/jumbo v4, ""

    return-object v4

    .line 501
    :cond_2
    if-le p1, v0, :cond_3

    .line 502
    move p1, v0

    .line 505
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 506
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 508
    :cond_4
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 19
    .param p1, "actionCode"    # I

    .prologue
    .line 573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 574
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    .line 575
    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 576
    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 577
    const/16 v14, 0x16

    move-wide v6, v4

    .line 574
    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 579
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 580
    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 581
    const/16 v16, -0x1

    const/16 v17, 0x0

    .line 582
    const/16 v18, 0x16

    move-wide v10, v4

    .line 579
    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 584
    const/4 v2, 0x1

    return v2
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 700
    const/4 v0, 0x1

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 692
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x121

    .line 624
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 625
    .local v2, "content":Landroid/text/Editable;
    if-eqz v2, :cond_6

    .line 626
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 627
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 628
    move v0, p1

    .line 629
    .local v0, "a":I
    move v1, p2

    .line 630
    .local v1, "b":I
    if-le p1, p2, :cond_0

    .line 631
    move v5, p1

    .line 632
    .local v5, "tmp":I
    move v0, p2

    .line 633
    move v1, p1

    .line 636
    .end local v5    # "tmp":I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 637
    .local v4, "length":I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 638
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 639
    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    .line 640
    :cond_3
    if-le v1, v4, :cond_4

    move v1, v4

    .line 642
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 643
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 644
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 645
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    .end local v3    # "i":I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 654
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 655
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 657
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v4    # "length":I
    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v0, 0x1

    .line 619
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 620
    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 667
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    return v2

    .line 668
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 669
    .local v1, "len":I
    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_2

    .line 674
    :cond_1
    return v3

    .line 669
    :cond_2
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 676
    if-ne p1, p2, :cond_3

    .line 677
    const/16 v2, 0x800

    .line 676
    invoke-static {v0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 680
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 684
    :goto_0
    return v3

    .line 682
    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
