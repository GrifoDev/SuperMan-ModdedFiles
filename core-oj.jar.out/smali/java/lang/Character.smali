.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$CharacterCache;,
        Ljava/lang/Character$Subset;,
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$UnicodeScript;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final COMBINING_SPACING_MARK:B = 0x8t

.field public static final CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final CONTROL:B = 0xft

.field public static final CURRENCY_SYMBOL:B = 0x1at

.field public static final DASH_PUNCTUATION:B = 0x14t

.field public static final DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final DIRECTIONALITY:[B

.field public static final DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final ENCLOSING_MARK:B = 0x7t

.field public static final END_PUNCTUATION:B = 0x16t

.field static final ERROR:I = -0x1

.field public static final FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final FORMAT:B = 0x10t

.field public static final INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field public static final LETTER_NUMBER:B = 0xat

.field public static final LINE_SEPARATOR:B = 0xdt

.field public static final LOWERCASE_LETTER:B = 0x2t

.field public static final MATH_SYMBOL:B = 0x19t

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:C = '\uffff'

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:C = '\u0000'

.field public static final MODIFIER_LETTER:B = 0x4t

.field public static final MODIFIER_SYMBOL:B = 0x1bt

.field public static final NON_SPACING_MARK:B = 0x6t

.field public static final OTHER_LETTER:B = 0x5t

.field public static final OTHER_NUMBER:B = 0xbt

.field public static final OTHER_PUNCTUATION:B = 0x18t

.field public static final OTHER_SYMBOL:B = 0x1ct

.field public static final PARAGRAPH_SEPARATOR:B = 0xet

.field public static final PRIVATE_USE:B = 0x12t

.field public static final SIZE:I = 0x10

.field public static final SPACE_SEPARATOR:B = 0xct

.field public static final START_PUNCTUATION:B = 0x15t

.field public static final SURROGATE:B = 0x13t

.field public static final TITLECASE_LETTER:B = 0x3t

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNASSIGNED:B = 0x0t

.field public static final UPPERCASE_LETTER:B = 0x1t

.field private static final serialVersionUID:J = 0x348b47d96b1a2678L


# instance fields
.field private final value:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, [C

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljava/lang/Character;->DIRECTIONALITY:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x2t
        0x10t
        0x11t
        0x12t
        0x8t
        0x9t
    .end array-data
.end method

.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Ljava/lang/Character;->value:C

    return-void
.end method

.method public static charCount(I)I
    .locals 1

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static codePointAt(Ljava/lang/CharSequence;I)I
    .locals 4

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_0
    return v0
.end method

.method public static codePointAt([CI)I
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0
.end method

.method public static codePointAt([CII)I
    .locals 1

    if-ge p1, p2, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    array-length v0, p0

    if-gt p2, v0, :cond_0

    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0
.end method

.method static codePointAtImpl([CII)I
    .locals 4

    add-int/lit8 v2, p1, 0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v2, p2, :cond_0

    aget-char v1, p0, v2

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_0
    return v0
.end method

.method public static codePointBefore(Ljava/lang/CharSequence;I)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    return v1
.end method

.method public static codePointBefore([CI)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v0

    return v0
.end method

.method public static codePointBefore([CII)I
    .locals 1

    if-le p1, p2, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    array-length v0, p0

    if-ge p2, v0, :cond_0

    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v0

    return v0
.end method

.method static codePointBeforeImpl([CII)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le p1, p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    return v1
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ltz p1, :cond_0

    if-le p2, v2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_1
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v0, p2, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static codePointCount([CII)I
    .locals 1

    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-ltz p2, :cond_0

    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCountImpl([CII)I

    move-result v0

    return v0
.end method

.method static codePointCountImpl([CII)I
    .locals 5

    add-int v0, p1, p2

    move v3, p2

    move v1, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v1, v2, 0x1

    aget-char v4, p0, v2

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ge v1, v0, :cond_0

    aget-char v4, p0, v1

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static compare(CC)I
    .locals 1

    sub-int v0, p0, p1

    return v0
.end method

.method public static digit(CI)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    move-result v0

    return v0
.end method

.method public static digit(II)I
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    const/16 v2, 0x24

    if-le p1, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    const/16 v2, 0x80

    if-ge p0, v2, :cond_6

    const/4 v0, -0x1

    const/16 v2, 0x30

    if-gt v2, p0, :cond_3

    const/16 v2, 0x39

    if-gt p0, v2, :cond_3

    add-int/lit8 v0, p0, -0x30

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    :goto_1
    return v0

    :cond_3
    const/16 v2, 0x61

    if-gt v2, p0, :cond_4

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_4

    add-int/lit8 v2, p0, -0x61

    add-int/lit8 v0, v2, 0xa

    goto :goto_0

    :cond_4
    const/16 v2, 0x41

    if-gt v2, p0, :cond_2

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_2

    add-int/lit8 v2, p0, -0x41

    add-int/lit8 v0, v2, 0xa

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    move-result v1

    return v1
.end method

.method static native digitImpl(II)I
.end method

.method public static forDigit(II)C
    .locals 2

    const/4 v1, 0x0

    if-ge p0, p1, :cond_0

    if-gez p0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/16 v0, 0x24

    if-le p1, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/16 v0, 0xa

    if-ge p0, v0, :cond_4

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    :cond_4
    add-int/lit8 v0, p0, 0x57

    int-to-char v0, v0

    return v0
.end method

.method public static getDirectionality(C)B
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method public static getDirectionality(I)B
    .locals 3

    const/4 v2, -0x1

    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionalityImpl(I)B

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    aget-byte v1, v1, v0

    return v1

    :cond_1
    return v2
.end method

.method static native getDirectionalityImpl(I)B
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getNameImpl(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    if-nez v2, :cond_2

    return-object v3

    :cond_2
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static native getNameImpl(I)Ljava/lang/String;
.end method

.method public static getNumericValue(C)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static getNumericValue(I)I
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x57

    return v0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x37

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0

    :cond_3
    const v0, 0xff21

    if-lt p0, v0, :cond_4

    const v0, 0xff3a

    if-gt p0, v0, :cond_4

    const v0, 0xff17

    sub-int v0, p0, v0

    return v0

    :cond_4
    const v0, 0xff41

    if-lt p0, v0, :cond_5

    const v0, 0xff5a

    if-gt p0, v0, :cond_5

    const v0, 0xff37

    sub-int v0, p0, v0

    return v0

    :cond_5
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    move-result v0

    return v0
.end method

.method static native getNumericValueImpl(I)I
.end method

.method public static getType(C)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    return v0
.end method

.method public static getType(I)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method static native getTypeImpl(I)I
.end method

.method public static hashCode(C)I
    .locals 0

    return p0
.end method

.method public static highSurrogate(I)C
    .locals 2

    ushr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static isAlphabetic(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isAlphabeticImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isAlphabeticImpl(I)Z
.end method

.method public static isBmpCodePoint(I)Z
    .locals 2

    const/4 v0, 0x0

    ushr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDefined(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    return v0
.end method

.method public static isDefined(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isDefinedImpl(I)Z
.end method

.method public static isDigit(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isDigit(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isDigitImpl(I)Z
.end method

.method public static isHighSurrogate(C)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0xd800

    if-lt p0, v1, :cond_0

    const v1, 0xdc00

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isISOControl(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    return v0
.end method

.method public static isISOControl(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x9f

    if-gt p0, v2, :cond_2

    const/16 v2, 0x7f

    if-ge p0, v2, :cond_0

    ushr-int/lit8 v2, p0, 0x5

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isIdentifierIgnorable(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static isIdentifierIgnorable(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isIdentifierIgnorableImpl(I)Z
.end method

.method public static isIdeographic(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isIdeographicImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isIdeographicImpl(I)Z
.end method

.method public static isJavaIdentifierPart(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .locals 8

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-ge p0, v2, :cond_1

    shl-long v2, v4, p0

    const-wide v4, 0x3ff00100fffc1ffL

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x80

    if-ge p0, v2, :cond_3

    add-int/lit8 v2, p0, -0x40

    shl-long v2, v4, v2

    const-wide v4, -0x7800000178000002L

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    const v3, 0x481077e

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    if-ltz p0, :cond_5

    const/16 v2, 0x8

    if-gt p0, v2, :cond_5

    :cond_4
    :goto_2
    return v0

    :cond_5
    const/16 v2, 0xe

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1b

    if-le p0, v2, :cond_4

    :cond_6
    const/16 v2, 0x7f

    if-lt p0, v2, :cond_7

    const/16 v2, 0x9f

    if-le p0, v2, :cond_4

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public static isJavaIdentifierStart(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-ge p0, v2, :cond_1

    const/16 v2, 0x24

    if-ne p0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x80

    if-ge p0, v2, :cond_3

    add-int/lit8 v2, p0, -0x40

    const-wide/16 v4, 0x1

    shl-long v2, v4, v2

    const-wide v4, 0x7fffffe87fffffeL

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    const v3, 0x480043e

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static isJavaLetter(C)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetterOrDigit(C)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static isLetter(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static isLetter(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isLetterImpl(I)Z
.end method

.method public static isLetterOrDigit(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isLetterOrDigitImpl(I)Z
.end method

.method public static isLowSurrogate(C)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0xdc00

    if-lt p0, v1, :cond_0

    const v1, 0xe000

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isLowerCase(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static isLowerCase(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isLowerCaseImpl(I)Z
.end method

.method public static isMirrored(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isMirrored(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isMirroredImpl(I)Z
.end method

.method public static isSpace(C)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-gt p0, v1, :cond_0

    const-wide v2, 0x100003600L

    shr-long/2addr v2, p0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSpaceChar(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static isSpaceChar(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x20

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa0

    if-ne p0, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    const/16 v2, 0x1000

    if-ge p0, v2, :cond_2

    return v1

    :cond_2
    const/16 v2, 0x1680

    if-eq p0, v2, :cond_3

    const/16 v2, 0x180e

    if-ne p0, v2, :cond_4

    :cond_3
    return v0

    :cond_4
    const/16 v2, 0x2000

    if-ge p0, v2, :cond_5

    return v1

    :cond_5
    const v2, 0xffff

    if-gt p0, v2, :cond_8

    const/16 v2, 0x200a

    if-le p0, v2, :cond_6

    const/16 v2, 0x2028

    if-ne p0, v2, :cond_7

    :cond_6
    :goto_0
    return v0

    :cond_7
    const/16 v2, 0x2029

    if-eq p0, v2, :cond_6

    const/16 v2, 0x202f

    if-eq p0, v2, :cond_6

    const/16 v2, 0x205f

    if-eq p0, v2, :cond_6

    const/16 v2, 0x3000

    if-eq p0, v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isSpaceCharImpl(I)Z
.end method

.method public static isSupplementaryCodePoint(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_0

    const/high16 v1, 0x110000

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSurrogate(C)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0xd800

    if-lt p0, v1, :cond_0

    const v1, 0xe000

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSurrogatePair(CC)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTitleCase(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v0

    return v0
.end method

.method public static isTitleCase(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isTitleCaseImpl(I)Z
.end method

.method public static isUnicodeIdentifierPart(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isUnicodeIdentifierPartImpl(I)Z
.end method

.method public static isUnicodeIdentifierStart(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isUnicodeIdentifierStartImpl(I)Z
.end method

.method public static isUpperCase(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static isUpperCase(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isUpperCaseImpl(I)Z
.end method

.method public static isValidCodePoint(I)Z
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWhitespace(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt p0, v2, :cond_1

    const/16 v2, 0x20

    if-gt p0, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    const/16 v2, 0x9

    if-lt p0, v2, :cond_2

    const/16 v2, 0xd

    if-le p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x1000

    if-ge p0, v2, :cond_3

    return v1

    :cond_3
    const/16 v2, 0x1680

    if-eq p0, v2, :cond_4

    const/16 v2, 0x180e

    if-ne p0, v2, :cond_5

    :cond_4
    return v0

    :cond_5
    const/16 v2, 0x2000

    if-ge p0, v2, :cond_6

    return v1

    :cond_6
    const/16 v2, 0x2007

    if-eq p0, v2, :cond_7

    const/16 v2, 0x202f

    if-ne p0, v2, :cond_8

    :cond_7
    return v1

    :cond_8
    const v2, 0xffff

    if-gt p0, v2, :cond_b

    const/16 v2, 0x200a

    if-le p0, v2, :cond_9

    const/16 v2, 0x2028

    if-ne p0, v2, :cond_a

    :cond_9
    :goto_0
    return v0

    :cond_a
    const/16 v2, 0x2029

    if-eq p0, v2, :cond_9

    const/16 v2, 0x205f

    if-eq p0, v2, :cond_9

    const/16 v2, 0x3000

    if-eq p0, v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_b
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    move-result v0

    return v0
.end method

.method static native isWhitespaceImpl(I)Z
.end method

.method public static lowSurrogate(I)C
    .locals 2

    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_1
    move v2, p1

    if-ltz p2, :cond_4

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    if-ge v0, p2, :cond_3

    add-int/lit8 v2, v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    if-ge v0, p2, :cond_7

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_4
    move v0, p2

    :goto_1
    if-lez v2, :cond_6

    if-gez v0, :cond_6

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_5

    if-lez v2, :cond_5

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    if-gez v0, :cond_8

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_7
    move v2, v3

    :cond_8
    return v2
.end method

.method public static offsetByCodePoints([CIIII)I
    .locals 1

    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-ltz p2, :cond_0

    if-lt p3, p1, :cond_0

    add-int v0, p1, p2

    if-gt p3, v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    move-result v0

    return v0
.end method

.method static offsetByCodePointsImpl([CIIII)I
    .locals 5

    move v2, p3

    if-ltz p4, :cond_2

    add-int v1, p1, p2

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    if-ge v0, p4, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-char v4, p0, v3

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ge v2, v1, :cond_0

    aget-char v4, p0, v2

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    if-ge v0, p4, :cond_5

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    move v0, p4

    :goto_1
    if-le v2, p1, :cond_4

    if-gez v0, :cond_4

    add-int/lit8 v2, v2, -0x1

    aget-char v4, p0, v2

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    if-le v2, p1, :cond_3

    add-int/lit8 v4, v2, -0x1

    aget-char v4, p0, v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-gez v0, :cond_6

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method

.method public static reverseBytes(C)C
    .locals 2

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static toChars(I[CI)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-char v0, p0

    aput-char v0, p1, p2

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toSurrogates(I[CI)V

    const/4 v0, 0x2

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static toChars(I)[C
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [C

    int-to-char v2, p0

    aput-char v2, v1, v3

    return-object v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v0, v1, [C

    invoke-static {p0, v0, v3}, Ljava/lang/Character;->toSurrogates(I[CI)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static toCodePoint(CC)I
    .locals 2

    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    const v1, -0x35fdc00

    add-int/2addr v0, v1

    return v0
.end method

.method public static toLowerCase(C)C
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toLowerCase(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native toLowerCaseImpl(I)I
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toSurrogates(I[CI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    aput-char v1, p1, v0

    invoke-static {p0}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    aput-char v0, p1, p2

    return-void
.end method

.method public static toTitleCase(C)C
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toTitleCase(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native toTitleCaseImpl(I)I
.end method

.method public static toUpperCase(C)C
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toUpperCase(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native toUpperCaseImpl(I)I
.end method

.method public static valueOf(C)Ljava/lang/Character;
    .locals 1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public charValue()C
    .locals 1

    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public compareTo(Ljava/lang/Character;)I
    .locals 2

    iget-char v0, p0, Ljava/lang/Character;->value:C

    iget-char v1, p1, Ljava/lang/Character;->value:C

    invoke-static {v0, v1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_1

    iget-char v1, p0, Ljava/lang/Character;->value:C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/Character;->hashCode(C)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [C

    iget-char v1, p0, Ljava/lang/Character;->value:C

    const/4 v2, 0x0

    aput-char v1, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
