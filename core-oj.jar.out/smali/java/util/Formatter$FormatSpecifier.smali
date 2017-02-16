.class Ljava/util/Formatter$FormatSpecifier;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/util/Formatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private c:C

.field private dt:Z

.field private f:Ljava/util/Formatter$Flags;

.field private index:I

.field private precision:I

.field final synthetic this$0:Ljava/util/Formatter;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/Formatter$FormatSpecifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    .line 2654
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Ljava/util/Formatter;
    .param p2, "indexStr"    # Ljava/lang/String;
    .param p3, "flagsStr"    # Ljava/lang/String;
    .param p4, "widthStr"    # Ljava/lang/String;
    .param p5, "precisionStr"    # Ljava/lang/String;
    .param p6, "tTStr"    # Ljava/lang/String;
    .param p7, "convStr"    # Ljava/lang/String;

    .prologue
    .line 2744
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2655
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2656
    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    iput-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2659
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 2746
    const/4 v0, 0x1

    .line 2748
    .local v0, "idx":I
    invoke-direct {p0, p2}, Ljava/util/Formatter$FormatSpecifier;->index(Ljava/lang/String;)I

    .line 2749
    invoke-direct {p0, p3}, Ljava/util/Formatter$FormatSpecifier;->flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    .line 2750
    invoke-direct {p0, p4}, Ljava/util/Formatter$FormatSpecifier;->width(Ljava/lang/String;)I

    .line 2751
    invoke-direct {p0, p5}, Ljava/util/Formatter$FormatSpecifier;->precision(Ljava/lang/String;)I

    .line 2753
    if-eqz p6, :cond_0

    .line 2754
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 2755
    const-string/jumbo v1, "T"

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2756
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-static {v1, v2}, Ljava/util/Formatter$Flags;->-wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 2759
    :cond_0
    invoke-direct {p0, p7}, Ljava/util/Formatter$FormatSpecifier;->conversion(Ljava/lang/String;)C

    .line 2761
    iget-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v1, :cond_1

    .line 2762
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkDateTime()V

    .line 2745
    :goto_0
    return-void

    .line 2763
    :cond_1
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2764
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkGeneral()V

    goto :goto_0

    .line 2765
    :cond_2
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2766
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkCharacter()V

    goto :goto_0

    .line 2767
    :cond_3
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2768
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkInteger()V

    goto :goto_0

    .line 2769
    :cond_4
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2770
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkFloat()V

    goto :goto_0

    .line 2771
    :cond_5
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2772
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkText()V

    goto :goto_0

    .line 2774
    :cond_6
    new-instance v1, Ljava/util/UnknownFormatConversionException;

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addDot([C)[C
    .locals 3
    .param p1, "mant"    # [C

    .prologue
    const/4 v2, 0x0

    .line 3884
    move-object v0, p1

    .line 3885
    .local v0, "tmp":[C
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [C

    .line 3886
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3887
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    .line 3888
    return-object v0
.end method

.method private addZeros([CI)[C
    .locals 11
    .param p1, "v"    # [C
    .param p2, "prec"    # I

    .prologue
    const/16 v10, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    .line 3474
    aget-char v6, p1, v0

    if-ne v6, v10, :cond_2

    .line 3477
    :cond_0
    const/4 v2, 0x0

    .line 3478
    .local v2, "needDot":Z
    array-length v6, p1

    if-ne v0, v6, :cond_1

    .line 3479
    const/4 v2, 0x1

    .line 3483
    :cond_1
    array-length v6, p1

    sub-int v9, v6, v0

    if-eqz v2, :cond_3

    move v6, v7

    :goto_1
    sub-int v3, v9, v6

    .line 3484
    .local v3, "outPrec":I
    sget-boolean v6, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v6, :cond_5

    if-gt v3, p2, :cond_4

    move v6, v8

    :goto_2
    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 3473
    .end local v2    # "needDot":Z
    .end local v3    # "outPrec":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v2    # "needDot":Z
    :cond_3
    move v6, v8

    .line 3483
    goto :goto_1

    .restart local v3    # "outPrec":I
    :cond_4
    move v6, v7

    .line 3484
    goto :goto_2

    .line 3485
    :cond_5
    if-ne v3, p2, :cond_6

    .line 3486
    return-object p1

    .line 3490
    :cond_6
    array-length v6, p1

    add-int/2addr v6, p2

    sub-int/2addr v6, v3

    if-eqz v2, :cond_8

    :goto_3
    add-int/2addr v6, v8

    new-array v5, v6, [C

    .line 3491
    .local v5, "tmp":[C
    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3494
    array-length v4, p1

    .line 3495
    .local v4, "start":I
    if-eqz v2, :cond_7

    .line 3496
    array-length v6, p1

    aput-char v10, v5, v6

    .line 3497
    add-int/lit8 v4, v4, 0x1

    .line 3501
    :cond_7
    move v1, v4

    .local v1, "j":I
    :goto_4
    array-length v6, v5

    if-ge v1, v6, :cond_9

    .line 3502
    const/16 v6, 0x30

    aput-char v6, v5, v1

    .line 3501
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "j":I
    .end local v4    # "start":I
    .end local v5    # "tmp":[C
    :cond_8
    move v8, v7

    .line 3490
    goto :goto_3

    .line 3504
    .restart local v1    # "j":I
    .restart local v4    # "start":I
    .restart local v5    # "tmp":[C
    :cond_9
    return-object v5
.end method

.method private adjustWidth(ILjava/util/Formatter$Flags;Z)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "f"    # Ljava/util/Formatter$Flags;
    .param p3, "neg"    # Z

    .prologue
    .line 3876
    move v0, p1

    .line 3877
    .local v0, "newW":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-eqz p3, :cond_0

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {p2, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3878
    add-int/lit8 v0, p1, -0x1

    .line 3879
    :cond_0
    return v0
.end method

.method private varargs checkBadFlags([Ljava/util/Formatter$Flags;)V
    .locals 3
    .param p1, "badFlags"    # [Ljava/util/Formatter$Flags;

    .prologue
    .line 3033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3034
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3035
    aget-object v1, p1, v0

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 3033
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3032
    :cond_1
    return-void
.end method

.method private checkCharacter()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3010
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v3, :cond_0

    .line 3011
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3012
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3013
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3012
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3015
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3016
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3009
    :cond_1
    return-void
.end method

.method private checkDateTime()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2998
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v3, :cond_0

    .line 2999
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3000
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$DateTime;->isValid(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3001
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3002
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3003
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3002
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3005
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3006
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2997
    :cond_2
    return-void
.end method

.method private checkFloat()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3039
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    .line 3040
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 3038
    :cond_0
    :goto_0
    return-void

    .line 3041
    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    .line 3042
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0

    .line 3043
    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 3044
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0

    .line 3045
    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 3046
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0
.end method

.method private checkGeneral()V
    .locals 3

    .prologue
    .line 2987
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    .line 2988
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    .line 2987
    if-eqz v0, :cond_1

    .line 2989
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 2991
    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2992
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2993
    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2994
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2993
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 2986
    return-void
.end method

.method private checkInteger()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3020
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    .line 3021
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3022
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3024
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 3025
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3019
    :goto_0
    return-void

    .line 3026
    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2

    .line 3027
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0

    .line 3029
    :cond_2
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_0
.end method

.method private checkNumeric()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3051
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-gez v0, :cond_0

    .line 3052
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    .line 3054
    :cond_0
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-gez v0, :cond_1

    .line 3055
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3058
    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_3

    .line 3059
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    .line 3058
    if-eqz v0, :cond_3

    .line 3060
    :cond_2
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3063
    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3064
    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    .line 3063
    if-eqz v0, :cond_6

    .line 3065
    :cond_5
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3050
    :cond_6
    return-void
.end method

.method private checkText()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3069
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v2, :cond_0

    .line 3070
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3071
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    sparse-switch v0, :sswitch_data_0

    .line 3087
    sget-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3073
    :sswitch_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3074
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3075
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3077
    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3078
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3081
    :sswitch_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v0, v2, :cond_2

    .line 3082
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    .line 3083
    :cond_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 3084
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3068
    :cond_3
    return-void

    .line 3071
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private conversion()C
    .locals 1

    .prologue
    .line 2741
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    return v0
.end method

.method private conversion(Ljava/lang/String;)C
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2727
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 2728
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-nez v0, :cond_2

    .line 2729
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isValid(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2730
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2731
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2732
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-static {v0, v1}, Ljava/util/Formatter$Flags;->-wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 2733
    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 2734
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2735
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2737
    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    return v0
.end method

.method private exponent([CI)[C
    .locals 5
    .param p1, "v"    # [C
    .param p2, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 3457
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3458
    aget-char v2, p1, v0

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 3461
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 3462
    const/4 v2, 0x0

    return-object v2

    .line 3457
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3463
    :cond_2
    sub-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [C

    .line 3464
    .local v1, "tmp":[C
    add-int/lit8 v2, v0, 0x1

    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3465
    return-object v1
.end method

.method private failConversion(CLjava/lang/Object;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 4135
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private failMismatch(Ljava/util/Formatter$Flags;C)V
    .locals 2
    .param p1, "f"    # Ljava/util/Formatter$Flags;
    .param p2, "c"    # C

    .prologue
    .line 4130
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4131
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Ljava/util/FormatFlagsConversionMismatchException;

    invoke-direct {v1, v0, p2}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v1
.end method

.method private flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2680
    invoke-static {p1}, Ljava/util/Formatter$Flags;->parse(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2681
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2682
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2683
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    return-object v0
.end method

.method private getZero(Ljava/util/Locale;)C
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 4139
    if-eqz p1, :cond_0

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4143
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v1}, Ljava/util/Formatter;->-get3(Ljava/util/Formatter;)C

    move-result v1

    return v1

    .line 4140
    :cond_1
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 4141
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1
.end method

.method private hexDouble(DI)Ljava/lang/String;
    .locals 31
    .param p1, "d"    # D
    .param p3, "prec"    # I

    .prologue
    .line 3510
    invoke-static/range {p1 .. p2}, Lsun/misc/FpUtils;->isFinite(D)Z

    move-result v25

    if-eqz v25, :cond_0

    const-wide/16 v26, 0x0

    cmpl-double v25, p1, v26

    if-nez v25, :cond_1

    .line 3512
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    return-object v25

    .line 3510
    :cond_1
    if-eqz p3, :cond_0

    const/16 v25, 0xd

    move/from16 v0, p3

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 3514
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_3

    const/16 v25, 0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    const/16 v25, 0xc

    move/from16 v0, p3

    move/from16 v1, v25

    if-gt v0, v1, :cond_2

    const/16 v25, 0x1

    :goto_0
    if-nez v25, :cond_3

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    :cond_2
    const/16 v25, 0x0

    goto :goto_0

    .line 3516
    :cond_3
    invoke-static/range {p1 .. p2}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v7

    .line 3518
    .local v7, "exponent":I
    const/16 v25, -0x3ff

    move/from16 v0, v25

    if-ne v7, v0, :cond_4

    const/16 v24, 0x1

    .line 3522
    .local v24, "subnormal":Z
    :goto_1
    if-eqz v24, :cond_7

    .line 3523
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    const/16 v25, 0x36

    move-wide/from16 v0, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lsun/misc/FpUtils;->scalb(DI)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/util/Formatter;->-set0(D)D

    .line 3524
    invoke-static {}, Ljava/util/Formatter;->-get2()D

    move-result-wide v26

    mul-double p1, p1, v26

    .line 3527
    invoke-static/range {p1 .. p2}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v7

    .line 3528
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_7

    const/16 v25, -0x3fe

    move/from16 v0, v25

    if-lt v7, v0, :cond_6

    .line 3529
    const/16 v25, 0x3ff

    move/from16 v0, v25

    if-gt v7, v0, :cond_5

    const/16 v25, 0x1

    .line 3528
    :goto_2
    if-nez v25, :cond_7

    new-instance v25, Ljava/lang/AssertionError;

    .line 3529
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 3528
    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    .line 3518
    .end local v24    # "subnormal":Z
    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    .line 3529
    .restart local v24    # "subnormal":Z
    :cond_5
    const/16 v25, 0x0

    goto :goto_2

    .line 3528
    :cond_6
    const/16 v25, 0x0

    goto :goto_2

    .line 3532
    :cond_7
    mul-int/lit8 v25, p3, 0x4

    add-int/lit8 v11, v25, 0x1

    .line 3534
    .local v11, "precision":I
    rsub-int/lit8 v20, v11, 0x35

    .line 3535
    .local v20, "shiftDistance":I
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_9

    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    const/16 v25, 0x35

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    const/16 v25, 0x1

    :goto_3
    if-nez v25, :cond_9

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    :cond_8
    const/16 v25, 0x0

    goto :goto_3

    .line 3537
    :cond_9
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 3540
    .local v4, "doppel":J
    const-wide v26, 0x7fffffffffffffffL

    and-long v26, v26, v4

    shr-long v12, v26, v20

    .line 3544
    .local v12, "newSignif":J
    const-wide/16 v26, -0x1

    shl-long v26, v26, v20

    move-wide/from16 v0, v26

    not-long v0, v0

    move-wide/from16 v26, v0

    and-long v18, v4, v26

    .line 3551
    .local v18, "roundingBits":J
    const-wide/16 v26, 0x1

    and-long v26, v26, v12

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_d

    const/4 v10, 0x1

    .line 3553
    .local v10, "leastZero":Z
    :goto_4
    add-int/lit8 v25, v20, -0x1

    const-wide/16 v26, 0x1

    shl-long v26, v26, v25

    and-long v26, v26, v18

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_e

    const/4 v15, 0x1

    .line 3554
    .local v15, "round":Z
    :goto_5
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 3555
    add-int/lit8 v25, v20, -0x1

    const-wide/16 v26, 0x1

    shl-long v26, v26, v25

    move-wide/from16 v0, v26

    not-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v18

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_f

    const/16 v21, 0x1

    .line 3556
    .local v21, "sticky":Z
    :goto_6
    if-eqz v10, :cond_a

    if-eqz v15, :cond_a

    if-nez v21, :cond_b

    :cond_a
    if-nez v10, :cond_c

    if-eqz v15, :cond_c

    .line 3557
    :cond_b
    const-wide/16 v26, 0x1

    add-long v12, v12, v26

    .line 3560
    :cond_c
    const-wide/high16 v26, -0x8000000000000000L

    and-long v22, v4, v26

    .line 3561
    .local v22, "signBit":J
    shl-long v26, v12, v20

    or-long v12, v22, v26

    .line 3562
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    .line 3564
    .local v16, "result":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3566
    const-string/jumbo v25, "1.0p1024"

    return-object v25

    .line 3551
    .end local v10    # "leastZero":Z
    .end local v15    # "round":Z
    .end local v16    # "result":D
    .end local v21    # "sticky":Z
    .end local v22    # "signBit":J
    :cond_d
    const/4 v10, 0x0

    .restart local v10    # "leastZero":Z
    goto :goto_4

    .line 3553
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "round":Z
    goto :goto_5

    .line 3555
    :cond_f
    const/16 v21, 0x0

    .restart local v21    # "sticky":Z
    goto :goto_6

    .line 3554
    .end local v21    # "sticky":Z
    :cond_10
    const/16 v21, 0x0

    .restart local v21    # "sticky":Z
    goto :goto_6

    .line 3568
    .restart local v16    # "result":D
    .restart local v22    # "signBit":J
    :cond_11
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 3569
    .local v14, "res":Ljava/lang/String;
    if-nez v24, :cond_12

    .line 3570
    return-object v14

    .line 3573
    :cond_12
    const/16 v25, 0x70

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 3574
    .local v8, "idx":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v8, v0, :cond_14

    .line 3576
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_13

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 3577
    :cond_13
    const/16 v25, 0x0

    return-object v25

    .line 3580
    :cond_14
    add-int/lit8 v25, v8, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3581
    .local v6, "exp":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v9, v25, -0x36

    .line 3582
    .local v9, "iexp":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "p"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 3583
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 3582
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    return-object v25
.end method

.method private index(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2663
    if-eqz p1, :cond_1

    .line 2665
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2672
    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v1

    .line 2666
    :catch_0
    move-exception v0

    .line 2667
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2670
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    goto :goto_0
.end method

.method private justify(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 2955
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2956
    return-object p1

    .line 2957
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2958
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    .line 2959
    .local v1, "pad":Z
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v4, v5

    .line 2960
    .local v3, "sp":I
    if-nez v1, :cond_1

    .line 2961
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2962
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    if-eqz v1, :cond_2

    .line 2964
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2965
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .prologue
    .line 3182
    if-nez p2, :cond_2

    .line 3183
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3184
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3194
    :cond_0
    :goto_0
    return-object p1

    .line 3185
    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3186
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3189
    :cond_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3190
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3192
    :cond_3
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "width"    # I
    .param p6, "l"    # Ljava/util/Locale;

    .prologue
    .line 4150
    const/16 v0, 0xa

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .local v2, "va":[C
    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 4151
    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .locals 15
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # [C
    .param p3, "f"    # Ljava/util/Formatter$Flags;
    .param p4, "width"    # I
    .param p5, "l"    # Ljava/util/Locale;

    .prologue
    .line 4158
    if-nez p1, :cond_0

    .line 4159
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4160
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 4162
    .local v1, "begin":I
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->getZero(Ljava/util/Locale;)C

    move-result v12

    .line 4165
    .local v12, "zero":C
    const/4 v7, 0x0

    .line 4166
    .local v7, "grpSep":C
    const/4 v8, -0x1

    .line 4167
    .local v8, "grpSize":I
    const/4 v3, 0x0

    .line 4169
    .local v3, "decSep":C
    move-object/from16 v0, p2

    array-length v11, v0

    .line 4170
    .local v11, "len":I
    move v6, v11

    .line 4171
    .local v6, "dot":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    if-ge v9, v11, :cond_1

    .line 4172
    aget-char v13, p2, v9

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_7

    .line 4173
    move v6, v9

    .line 4178
    :cond_1
    if-ge v6, v11, :cond_3

    .line 4179
    if-eqz p5, :cond_2

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 4180
    :cond_2
    const/16 v3, 0x2e

    .line 4187
    .end local v3    # "decSep":C
    :cond_3
    :goto_1
    sget-object v13, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 4188
    if-eqz p5, :cond_4

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 4189
    :cond_4
    const/16 v7, 0x2c

    .line 4190
    const/4 v8, 0x3

    .line 4200
    .end local v7    # "grpSep":C
    :cond_5
    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_b

    .line 4201
    if-ne v9, v6, :cond_a

    .line 4202
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4204
    const/4 v7, 0x0

    .line 4200
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4171
    .restart local v3    # "decSep":C
    .restart local v7    # "grpSep":C
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4182
    :cond_8
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    .line 4183
    .local v5, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    .local v3, "decSep":C
    goto :goto_1

    .line 4192
    .end local v3    # "decSep":C
    .end local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_9
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    .line 4193
    .restart local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    .line 4194
    .local v7, "grpSep":C
    invoke-static/range {p5 .. p5}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    check-cast v4, Ljava/text/DecimalFormat;

    .line 4195
    .local v4, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v8

    goto :goto_2

    .line 4208
    .end local v4    # "df":Ljava/text/DecimalFormat;
    .end local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v7    # "grpSep":C
    :cond_a
    aget-char v2, p2, v9

    .line 4209
    .local v2, "c":C
    add-int/lit8 v13, v2, -0x30

    add-int/2addr v13, v12

    int-to-char v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4210
    if-eqz v7, :cond_6

    add-int/lit8 v13, v6, -0x1

    if-eq v9, v13, :cond_6

    sub-int v13, v6, v9

    rem-int/2addr v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 4211
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4215
    .end local v2    # "c":C
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 4216
    const/4 v13, -0x1

    move/from16 v0, p4

    if-eq v0, v13, :cond_c

    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 4217
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_5
    sub-int v13, p4, v11

    if-ge v10, v13, :cond_c

    .line 4218
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4217
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 4220
    .end local v10    # "k":I
    :cond_c
    return-object p1
.end method

.method private mantissa([CI)[C
    .locals 5
    .param p1, "v"    # [C
    .param p2, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 3446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 3447
    aget-char v2, p1, v0

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 3450
    :cond_0
    new-array v1, v0, [C

    .line 3451
    .local v1, "tmp":[C
    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3452
    return-object v1

    .line 3446
    .end local v1    # "tmp":[C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private precision(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2709
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2710
    if-eqz p1, :cond_0

    .line 2712
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2713
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-gez v1, :cond_0

    .line 2714
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2715
    :catch_0
    move-exception v0

    .line 2716
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2719
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    return v1
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;
    .locals 34
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/util/Calendar;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3921
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3922
    :cond_1
    if-nez p1, :cond_2

    .line 3923
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3924
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 4122
    :pswitch_0
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3929
    :pswitch_1
    const/16 v4, 0xb

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 3930
    .local v25, "i":I
    const/16 v4, 0x49

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    const/16 v4, 0x6c

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    .line 3931
    :cond_3
    if-eqz v25, :cond_4

    const/16 v4, 0xc

    move/from16 v0, v25

    if-ne v0, v4, :cond_8

    :cond_4
    const/16 v25, 0xc

    .line 3932
    :cond_5
    :goto_1
    const/16 v4, 0x48

    move/from16 v0, p3

    if-eq v0, v4, :cond_6

    .line 3933
    const/16 v4, 0x49

    move/from16 v0, p3

    if-ne v0, v4, :cond_9

    .line 3934
    :cond_6
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3936
    .local v8, "flags":Ljava/util/Formatter$Flags;
    :goto_2
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4124
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    .end local p4    # "l":Ljava/util/Locale;
    :cond_7
    :goto_3
    return-object p1

    .line 3931
    .restart local v25    # "i":I
    .restart local p4    # "l":Ljava/util/Locale;
    :cond_8
    rem-int/lit8 v25, v25, 0xc

    goto :goto_1

    .line 3935
    :cond_9
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    goto :goto_2

    .line 3940
    .end local v25    # "i":I
    :pswitch_2
    const/16 v4, 0xc

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 3941
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3942
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3946
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_3
    const/16 v4, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0xf4240

    mul-int v25, v4, v5

    .line 3947
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3948
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/16 v9, 0x9

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3952
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_4
    const/16 v4, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 3953
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3954
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x3

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3958
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 3959
    .local v6, "i":J
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 3960
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3965
    .end local v6    # "i":J
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_6
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v4, "AM"

    const/4 v5, 0x0

    aput-object v4, v23, v5

    const-string/jumbo v4, "PM"

    const/4 v5, 0x1

    aput-object v4, v23, v5

    .line 3966
    .local v23, "ampm":[Ljava/lang/String;
    if-eqz p4, :cond_a

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p4

    if-eq v0, v4, :cond_a

    .line 3967
    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 3968
    .local v24, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v23

    .line 3970
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_a
    const/16 v4, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget-object v30, v23, v4

    .line 3971
    .local v30, "s":Ljava/lang/String;
    if-eqz p4, :cond_b

    .end local p4    # "l":Ljava/util/Locale;
    :goto_4
    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .restart local p4    # "l":Ljava/util/Locale;
    :cond_b
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_4

    .line 3975
    .end local v23    # "ampm":[Ljava/lang/String;
    .end local v30    # "s":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v6, v4, v10

    .line 3976
    .restart local v6    # "i":J
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 3977
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 3981
    .end local v6    # "i":J
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_8
    const/16 v4, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 3982
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3983
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x2

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 3987
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_9
    const/16 v4, 0xf

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v25, v4, v5

    .line 3988
    .restart local v25    # "i":I
    if-gez v25, :cond_d

    const/16 v28, 0x1

    .line 3989
    .local v28, "neg":Z
    :goto_5
    if-eqz v28, :cond_e

    const/16 v4, 0x2d

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3990
    if-eqz v28, :cond_c

    .line 3991
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    .line 3992
    :cond_c
    const v4, 0xea60

    div-int v27, v25, v4

    .line 3994
    .local v27, "min":I
    div-int/lit8 v4, v27, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/lit8 v5, v27, 0x3c

    add-int v29, v4, v5

    .line 3995
    .local v29, "offset":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3997
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v29

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x4

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 3988
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v27    # "min":I
    .end local v28    # "neg":Z
    .end local v29    # "offset":I
    :cond_d
    const/16 v28, 0x0

    goto :goto_5

    .line 3989
    .restart local v28    # "neg":Z
    :cond_e
    const/16 v4, 0x2b

    goto :goto_6

    .line 4001
    .end local v25    # "i":I
    .end local v28    # "neg":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v33

    .line 4002
    .local v33, "tz":Ljava/util/TimeZone;
    const/16 v4, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 4004
    :goto_7
    if-nez p4, :cond_f

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4003
    .end local p4    # "l":Ljava/util/Locale;
    :cond_f
    const/4 v5, 0x0

    .line 4002
    move-object/from16 v0, v33

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .restart local p4    # "l":Ljava/util/Locale;
    :cond_10
    const/4 v4, 0x0

    goto :goto_7

    .line 4011
    .end local v33    # "tz":Ljava/util/TimeZone;
    :pswitch_b
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4012
    .restart local v25    # "i":I
    if-nez p4, :cond_11

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4013
    .local v26, "lt":Ljava/util/Locale;
    :goto_8
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 4014
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v4, 0x41

    move/from16 v0, p3

    if-ne v0, v4, :cond_12

    .line 4015
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v26    # "lt":Ljava/util/Locale;
    :cond_11
    move-object/from16 v26, p4

    .line 4012
    goto :goto_8

    .line 4017
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v26    # "lt":Ljava/util/Locale;
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 4023
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v25    # "i":I
    .end local v26    # "lt":Ljava/util/Locale;
    :pswitch_c
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4024
    .restart local v25    # "i":I
    if-nez p4, :cond_13

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4025
    .restart local v26    # "lt":Ljava/util/Locale;
    :goto_9
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 4026
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v4, 0x42

    move/from16 v0, p3

    if-ne v0, v4, :cond_14

    .line 4027
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v26    # "lt":Ljava/util/Locale;
    :cond_13
    move-object/from16 v26, p4

    .line 4024
    goto :goto_9

    .line 4029
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v26    # "lt":Ljava/util/Locale;
    :cond_14
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 4035
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v25    # "i":I
    .end local v26    # "lt":Ljava/util/Locale;
    :pswitch_d
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4036
    .restart local v25    # "i":I
    const/4 v15, 0x2

    .line 4037
    .local v15, "size":I
    sparse-switch p3, :sswitch_data_0

    .line 4048
    :goto_a
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4049
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 4039
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :sswitch_0
    div-int/lit8 v25, v25, 0x64

    goto :goto_a

    .line 4042
    :sswitch_1
    rem-int/lit8 v25, v25, 0x64

    goto :goto_a

    .line 4045
    :sswitch_2
    const/4 v15, 0x4

    .line 4046
    goto :goto_a

    .line 4054
    .end local v15    # "size":I
    .end local v25    # "i":I
    :pswitch_e
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4055
    .restart local v25    # "i":I
    const/16 v4, 0x64

    move/from16 v0, p3

    if-ne v0, v4, :cond_15

    .line 4056
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4058
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    :goto_b
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 4057
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :cond_15
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    goto :goto_b

    .line 4062
    .end local v25    # "i":I
    :pswitch_f
    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4063
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4064
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x3

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 4068
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_10
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v25, v4, 0x1

    .line 4069
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4070
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 4077
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_11
    const/16 v31, 0x3a

    .line 4078
    .local v31, "sep":C
    const/16 v4, 0x48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4079
    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4080
    const/16 v4, 0x54

    move/from16 v0, p3

    if-ne v0, v4, :cond_7

    .line 4081
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4082
    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_3

    .line 4087
    .end local v31    # "sep":C
    :pswitch_12
    const/16 v31, 0x3a

    .line 4088
    .restart local v31    # "sep":C
    const/16 v4, 0x49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4089
    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4090
    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4092
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 4093
    .local v32, "tsb":Ljava/lang/StringBuilder;
    const/16 v4, 0x70

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4094
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_16

    .end local p4    # "l":Ljava/util/Locale;
    :goto_c
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .restart local p4    # "l":Ljava/util/Locale;
    :cond_16
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_c

    .line 4098
    .end local v31    # "sep":C
    .end local v32    # "tsb":Ljava/lang/StringBuilder;
    :pswitch_13
    const/16 v31, 0x20

    .line 4099
    .restart local v31    # "sep":C
    const/16 v4, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4100
    const/16 v4, 0x62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4101
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4102
    const/16 v4, 0x54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4103
    const/16 v4, 0x5a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4104
    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_3

    .line 4108
    .end local v31    # "sep":C
    :pswitch_14
    const/16 v31, 0x2f

    .line 4109
    .restart local v31    # "sep":C
    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4110
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4111
    const/16 v4, 0x79

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_3

    .line 4115
    .end local v31    # "sep":C
    :pswitch_15
    const/16 v31, 0x2d

    .line 4116
    .restart local v31    # "sep":C
    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4117
    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4118
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_3

    .line 3924
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_11
        :pswitch_8
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_13
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_f
        :pswitch_1
        :pswitch_1
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_12
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_9
    .end packed-switch

    .line 4037
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x59 -> :sswitch_2
        0x79 -> :sswitch_1
    .end sparse-switch
.end method

.method private print(BLjava/util/Locale;)V
    .locals 6
    .param p1, "value"    # B
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3092
    int-to-long v0, p1

    .line 3093
    .local v0, "v":J
    if-gez p1, :cond_2

    .line 3094
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_0

    .line 3095
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v4, 0x78

    if-ne v3, v4, :cond_2

    .line 3096
    :cond_0
    const-wide/16 v4, 0x100

    add-long/2addr v0, v4

    .line 3097
    sget-boolean v3, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 3099
    :cond_2
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3091
    return-void
.end method

.method private print(DLjava/util/Locale;)V
    .locals 9
    .param p1, "value"    # D
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3266
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v8, 0x1

    .line 3268
    .local v8, "neg":Z
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3269
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 3272
    .local v2, "v":D
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3275
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3276
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v6, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v7, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    .line 3282
    :goto_1
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3288
    .end local v2    # "v":D
    :goto_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3264
    return-void

    .line 3266
    .end local v8    # "neg":Z
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "neg":Z
    goto :goto_0

    .line 3278
    .restart local v2    # "v":D
    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3279
    const-string/jumbo v0, "INFINITY"

    .line 3278
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3279
    :cond_2
    const-string/jumbo v0, "Infinity"

    goto :goto_3

    .line 3284
    .end local v2    # "v":D
    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NAN"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "NaN"

    goto :goto_4
.end method

.method private print(FLjava/util/Locale;)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3261
    float-to-double v0, p1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    .line 3260
    return-void
.end method

.method private print(ILjava/util/Locale;)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3114
    int-to-long v0, p1

    .line 3115
    .local v0, "v":J
    if-gez p1, :cond_2

    .line 3116
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_0

    .line 3117
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v4, 0x78

    if-ne v3, v4, :cond_2

    .line 3118
    :cond_0
    const-wide v4, 0x100000000L

    add-long/2addr v0, v4

    .line 3119
    sget-boolean v3, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 3121
    :cond_2
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3113
    return-void
.end method

.method private print(JLjava/util/Locale;)V
    .locals 11
    .param p1, "value"    # J
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3128
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    .line 3129
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    const/4 v8, 0x1

    .line 3131
    .local v8, "neg":Z
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_2

    .line 3132
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 3137
    .local v2, "va":[C
    :goto_1
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3140
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-direct {p0, v0, v4, v8}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v4

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3143
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3177
    .end local v2    # "va":[C
    .end local v8    # "neg":Z
    :cond_0
    :goto_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3124
    return-void

    .line 3129
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "neg":Z
    goto :goto_0

    .line 3134
    :cond_2
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .restart local v2    # "va":[C
    goto :goto_1

    .line 3144
    .end local v2    # "va":[C
    .end local v8    # "neg":Z
    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_7

    .line 3145
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3146
    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 3145
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3147
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v9

    .line 3148
    .local v9, "s":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3149
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 3153
    .local v7, "len":I
    :goto_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3154
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3155
    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3156
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_6

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3150
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .restart local v7    # "len":I
    goto :goto_3

    .line 3157
    :cond_6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3158
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_7
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    .line 3159
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3160
    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 3159
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3161
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    .line 3162
    .restart local v9    # "s":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3163
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v7, v0, 0x2

    .line 3167
    .restart local v7    # "len":I
    :goto_5
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3168
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "0X"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3169
    :cond_8
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3170
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_b

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3164
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .restart local v7    # "len":I
    goto :goto_5

    .line 3168
    :cond_a
    const-string/jumbo v0, "0x"

    goto :goto_6

    .line 3171
    :cond_b
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3172
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 3173
    :cond_c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private print(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2945
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2946
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2947
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2949
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get1(Ljava/util/Formatter;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get1(Ljava/util/Formatter;)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2951
    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2944
    return-void

    .line 2949
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .locals 30
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # D
    .param p4, "l"    # Ljava/util/Locale;
    .param p5, "f"    # Ljava/util/Formatter$Flags;
    .param p6, "c"    # C
    .param p7, "precision"    # I
    .param p8, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3296
    const/16 v4, 0x65

    move/from16 v0, p6

    if-ne v0, v4, :cond_a

    .line 3299
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_3

    const/16 v21, 0x6

    .line 3302
    .local v21, "prec":I
    :goto_0
    new-instance v16, Lsun/misc/FormattedFloatingDecimal;

    .line 3303
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3302
    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    .line 3305
    .local v16, "fd":Lsun/misc/FormattedFloatingDecimal;
    const/16 v4, 0x1e

    new-array v0, v4, [C

    move-object/from16 v27, v0

    .line 3306
    .local v27, "v":[C
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/misc/FormattedFloatingDecimal;->getChars([C)I

    move-result v19

    .line 3308
    .local v19, "len":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->mantissa([CI)[C

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    .line 3312
    .local v6, "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v21, :cond_0

    .line 3313
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3315
    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-nez v4, :cond_4

    .line 3316
    const/4 v4, 0x3

    new-array v15, v4, [C

    .local v15, "exp":[C
    fill-array-data v15, :array_0

    .line 3318
    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3319
    .local v8, "newW":I
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 3320
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    array-length v5, v15

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    .line 3321
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3323
    if-eqz p4, :cond_5

    move-object/from16 v23, p4

    .line 3324
    .local v23, "separatorLocale":Ljava/util/Locale;
    :goto_2
    invoke-static/range {v23 .. v23}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v20

    .line 3325
    .local v20, "localeData":Llibcore/icu/LocaleData;
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3326
    move-object/from16 v0, v20

    iget-object v4, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 3325
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3329
    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    .line 3330
    .local v12, "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    aget-char v24, v15, v4

    .line 3331
    .local v24, "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    const/16 v4, 0x2b

    move/from16 v0, v24

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2d

    move/from16 v0, v24

    if-ne v0, v4, :cond_7

    :cond_2
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3299
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v20    # "localeData":Llibcore/icu/LocaleData;
    .end local v21    # "prec":I
    .end local v23    # "separatorLocale":Ljava/util/Locale;
    .end local v24    # "sign":C
    .end local v27    # "v":[C
    :cond_3
    move/from16 v21, p7

    .restart local v21    # "prec":I
    goto/16 :goto_0

    .line 3316
    .restart local v6    # "mant":[C
    .restart local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .restart local v19    # "len":I
    .restart local v27    # "v":[C
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->exponent([CI)[C

    move-result-object v15

    .restart local v15    # "exp":[C
    goto :goto_1

    .line 3323
    .restart local v8    # "newW":I
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    goto :goto_2

    .line 3327
    .restart local v20    # "localeData":Llibcore/icu/LocaleData;
    .restart local v23    # "separatorLocale":Ljava/util/Locale;
    :cond_6
    move-object/from16 v0, v20

    iget-object v4, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 3331
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v24    # "sign":C
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 3332
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3334
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    .line 3335
    .local v11, "tmp":[C
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v15, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3336
    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3294
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v20    # "localeData":Llibcore/icu/LocaleData;
    .end local v21    # "prec":I
    .end local v23    # "separatorLocale":Ljava/util/Locale;
    .end local v24    # "sign":C
    .end local v27    # "v":[C
    :cond_9
    :goto_5
    return-void

    .line 3337
    :cond_a
    const/16 v4, 0x66

    move/from16 v0, p6

    if-ne v0, v4, :cond_e

    .line 3340
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_d

    const/16 v21, 0x6

    .line 3343
    .restart local v21    # "prec":I
    :goto_6
    new-instance v16, Lsun/misc/FormattedFloatingDecimal;

    .line 3344
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3343
    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    .line 3348
    .restart local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual/range {v16 .. v16}, Lsun/misc/FormattedFloatingDecimal;->getExponent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3347
    add-int/lit8 v4, v4, 0x1f

    new-array v0, v4, [C

    move-object/from16 v27, v0

    .line 3349
    .restart local v27    # "v":[C
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/misc/FormattedFloatingDecimal;->getChars([C)I

    move-result v19

    .line 3351
    .restart local v19    # "len":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->mantissa([CI)[C

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    .line 3355
    .restart local v6    # "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v21, :cond_b

    .line 3356
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3358
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3359
    .restart local v8    # "newW":I
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 3360
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_c
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    .line 3361
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3340
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v21    # "prec":I
    .end local v27    # "v":[C
    :cond_d
    move/from16 v21, p7

    .restart local v21    # "prec":I
    goto :goto_6

    .line 3362
    .end local v21    # "prec":I
    :cond_e
    const/16 v4, 0x67

    move/from16 v0, p6

    if-ne v0, v4, :cond_1a

    .line 3363
    move/from16 v21, p7

    .line 3364
    .restart local v21    # "prec":I
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_13

    .line 3365
    const/16 v21, 0x6

    .line 3370
    :cond_f
    :goto_7
    new-instance v16, Lsun/misc/FormattedFloatingDecimal;

    .line 3371
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3370
    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    .line 3375
    .restart local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual/range {v16 .. v16}, Lsun/misc/FormattedFloatingDecimal;->getExponent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3374
    add-int/lit8 v4, v4, 0x1f

    new-array v0, v4, [C

    move-object/from16 v27, v0

    .line 3376
    .restart local v27    # "v":[C
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/misc/FormattedFloatingDecimal;->getChars([C)I

    move-result v19

    .line 3378
    .restart local v19    # "len":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->exponent([CI)[C

    move-result-object v15

    .line 3379
    .restart local v15    # "exp":[C
    if-eqz v15, :cond_14

    .line 3380
    add-int/lit8 v21, v21, -0x1

    .line 3385
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->mantissa([CI)[C

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    .line 3388
    .restart local v6    # "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez v21, :cond_10

    .line 3389
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3391
    :cond_10
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3392
    .restart local v8    # "newW":I
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    .line 3393
    if-eqz v15, :cond_16

    .line 3394
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    array-length v5, v15

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_11
    :goto_9
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    .line 3398
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3400
    if-eqz v15, :cond_9

    .line 3401
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v4, 0x45

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3403
    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    .line 3404
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    aget-char v24, v15, v4

    .line 3405
    .restart local v24    # "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_19

    const/16 v4, 0x2b

    move/from16 v0, v24

    if-eq v0, v4, :cond_12

    const/16 v4, 0x2d

    move/from16 v0, v24

    if-ne v0, v4, :cond_18

    :cond_12
    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_19

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3366
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v24    # "sign":C
    .end local v27    # "v":[C
    :cond_13
    if-nez p7, :cond_f

    .line 3367
    const/16 v21, 0x1

    goto/16 :goto_7

    .line 3382
    .restart local v15    # "exp":[C
    .restart local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .restart local v19    # "len":I
    .restart local v27    # "v":[C
    :cond_14
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-nez v4, :cond_15

    const/4 v4, 0x0

    :goto_c
    sub-int v4, v21, v4

    add-int/lit8 v21, v4, -0x1

    goto/16 :goto_8

    :cond_15
    invoke-virtual/range {v16 .. v16}, Lsun/misc/FormattedFloatingDecimal;->getExponentRounded()I

    move-result v4

    goto :goto_c

    .line 3396
    .restart local v6    # "mant":[C
    .restart local v8    # "newW":I
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    goto :goto_9

    .line 3401
    :cond_17
    const/16 v4, 0x65

    goto :goto_a

    .line 3405
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v24    # "sign":C
    :cond_18
    const/4 v4, 0x0

    goto :goto_b

    .line 3406
    :cond_19
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3408
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    .line 3409
    .restart local v11    # "tmp":[C
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v15, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3410
    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 3412
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v21    # "prec":I
    .end local v24    # "sign":C
    .end local v27    # "v":[C
    :cond_1a
    const/16 v4, 0x61

    move/from16 v0, p6

    if-ne v0, v4, :cond_9

    .line 3413
    move/from16 v21, p7

    .line 3414
    .restart local v21    # "prec":I
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_1c

    .line 3416
    const/16 v21, 0x0

    .line 3420
    :cond_1b
    :goto_d
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->hexDouble(DI)Ljava/lang/String;

    move-result-object v22

    .line 3423
    .local v22, "s":Ljava/lang/String;
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v26

    .line 3424
    .local v26, "upper":Z
    if-eqz v26, :cond_1d

    const-string/jumbo v4, "0X"

    :goto_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3426
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3427
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_f
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    move/from16 v0, v17

    if-ge v0, v4, :cond_1e

    .line 3428
    const/16 v4, 0x30

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3427
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 3417
    .end local v17    # "i":I
    .end local v22    # "s":Ljava/lang/String;
    .end local v26    # "upper":Z
    :cond_1c
    if-nez p7, :cond_1b

    .line 3418
    const/16 v21, 0x1

    goto :goto_d

    .line 3424
    .restart local v22    # "s":Ljava/lang/String;
    .restart local v26    # "upper":Z
    :cond_1d
    const-string/jumbo v4, "0x"

    goto :goto_e

    .line 3430
    :cond_1e
    const/16 v4, 0x70

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 3431
    .local v18, "idx":I
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v28

    .line 3432
    .local v28, "va":[C
    if-eqz v26, :cond_1f

    .line 3433
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 3435
    .local v25, "tmp":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    .line 3436
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toCharArray()[C

    move-result-object v28

    .line 3438
    .end local v25    # "tmp":Ljava/lang/String;
    :cond_1f
    if-eqz v21, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v28

    .end local v28    # "va":[C
    :cond_20
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3439
    if-eqz v26, :cond_21

    const/16 v4, 0x50

    :goto_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3440
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 3439
    :cond_21
    const/16 v4, 0x70

    goto :goto_10

    .line 3316
    nop

    :array_0
    .array-data 2
        0x2bs
        0x30s
        0x30s
    .end array-data
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .locals 41
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "c"    # C
    .param p6, "precision"    # I
    .param p7, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3614
    const/16 v4, 0x65

    move/from16 v0, p5

    if-ne v0, v4, :cond_b

    .line 3616
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_3

    const/16 v19, 0x6

    .line 3617
    .local v19, "prec":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v35

    .line 3618
    .local v35, "scale":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v34

    .line 3619
    .local v34, "origPrec":I
    const/16 v33, 0x0

    .line 3622
    .local v33, "nzeros":I
    add-int/lit8 v4, v34, -0x1

    move/from16 v0, v19

    if-le v0, v4, :cond_4

    .line 3623
    move/from16 v29, v34

    .line 3624
    .local v29, "compPrec":I
    add-int/lit8 v4, v34, -0x1

    sub-int v33, v19, v4

    .line 3629
    :goto_1
    new-instance v32, Ljava/math/MathContext;

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/math/MathContext;-><init>(I)V

    .line 3631
    .local v32, "mc":Ljava/math/MathContext;
    new-instance v39, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v39

    move/from16 v1, v35

    move-object/from16 v2, v32

    invoke-direct {v0, v4, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .line 3634
    .local v39, "v":Ljava/math/BigDecimal;
    new-instance v28, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    invoke-virtual/range {v39 .. v39}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    .line 3635
    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 3634
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v7}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    .line 3637
    .local v28, "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v6

    .line 3644
    .local v6, "mant":[C
    const/4 v4, 0x1

    move/from16 v0, v34

    if-eq v0, v4, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->hasDot()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3650
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v6

    .line 3652
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exponent()[C

    move-result-object v31

    .line 3653
    .local v31, "exp":[C
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3654
    .local v8, "newW":I
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 3655
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, v31

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p3

    .line 3656
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3658
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x45

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3660
    invoke-virtual/range {p4 .. p4}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    .line 3661
    .local v12, "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    aget-char v36, v31, v4

    .line 3662
    .local v36, "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_9

    const/16 v4, 0x2b

    move/from16 v0, v36

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2d

    move/from16 v0, v36

    if-ne v0, v4, :cond_8

    :cond_2
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3616
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v29    # "compPrec":I
    .end local v31    # "exp":[C
    .end local v32    # "mc":Ljava/math/MathContext;
    .end local v33    # "nzeros":I
    .end local v34    # "origPrec":I
    .end local v35    # "scale":I
    .end local v36    # "sign":C
    .end local v39    # "v":Ljava/math/BigDecimal;
    :cond_3
    move/from16 v19, p6

    .restart local v19    # "prec":I
    goto/16 :goto_0

    .line 3626
    .restart local v33    # "nzeros":I
    .restart local v34    # "origPrec":I
    .restart local v35    # "scale":I
    :cond_4
    add-int/lit8 v29, v19, 0x1

    .restart local v29    # "compPrec":I
    goto/16 :goto_1

    .line 3645
    .restart local v6    # "mant":[C
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .restart local v32    # "mc":Ljava/math/MathContext;
    .restart local v39    # "v":Ljava/math/BigDecimal;
    :cond_5
    if-gtz v33, :cond_6

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    .line 3644
    if-eqz v4, :cond_0

    .line 3646
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    goto/16 :goto_2

    .line 3658
    .restart local v8    # "newW":I
    .restart local v31    # "exp":[C
    :cond_7
    const/16 v4, 0x65

    goto :goto_3

    .line 3662
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v36    # "sign":C
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 3663
    :cond_9
    const/4 v4, 0x0

    aget-char v4, v31, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3665
    move-object/from16 v0, v31

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    .line 3666
    .local v11, "tmp":[C
    move-object/from16 v0, v31

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3667
    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3612
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v29    # "compPrec":I
    .end local v31    # "exp":[C
    .end local v32    # "mc":Ljava/math/MathContext;
    .end local v33    # "nzeros":I
    .end local v34    # "origPrec":I
    .end local v35    # "scale":I
    .end local v36    # "sign":C
    .end local v39    # "v":Ljava/math/BigDecimal;
    :cond_a
    :goto_5
    return-void

    .line 3668
    :cond_b
    const/16 v4, 0x66

    move/from16 v0, p5

    if-ne v0, v4, :cond_12

    .line 3670
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_f

    const/16 v19, 0x6

    .line 3671
    .restart local v19    # "prec":I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v35

    .line 3673
    .restart local v35    # "scale":I
    move/from16 v0, v35

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 3675
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v29

    .line 3676
    .restart local v29    # "compPrec":I
    move/from16 v0, v29

    move/from16 v1, v35

    if-gt v0, v1, :cond_10

    .line 3678
    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 3686
    .end local v29    # "compPrec":I
    :cond_c
    :goto_7
    new-instance v28, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    .line 3687
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 3688
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    .line 3689
    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 3686
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v7}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    .line 3691
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v6

    .line 3692
    .restart local v6    # "mant":[C
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    move/from16 v0, v19

    if-ge v4, v0, :cond_11

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    sub-int v33, v19, v4

    .line 3699
    .restart local v33    # "nzeros":I
    :goto_8
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    if-nez v4, :cond_e

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-nez v4, :cond_d

    if-lez v33, :cond_e

    .line 3700
    :cond_d
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3704
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v6

    .line 3706
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v17

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v6

    move-object/from16 v16, p4

    move-object/from16 v18, p3

    invoke-direct/range {v13 .. v18}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 3670
    .end local v6    # "mant":[C
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v33    # "nzeros":I
    .end local v35    # "scale":I
    :cond_f
    move/from16 v19, p6

    .restart local v19    # "prec":I
    goto/16 :goto_6

    .line 3680
    .restart local v29    # "compPrec":I
    .restart local v35    # "scale":I
    :cond_10
    sub-int v4, v35, v19

    sub-int v29, v29, v4

    .line 3681
    new-instance v40, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 3683
    new-instance v5, Ljava/math/MathContext;

    move/from16 v0, v29

    invoke-direct {v5, v0}, Ljava/math/MathContext;-><init>(I)V

    .line 3681
    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-direct {v0, v4, v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v40, "value":Ljava/math/BigDecimal;
    move-object/from16 p2, v40

    .end local v40    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_7

    .line 3692
    .end local v29    # "compPrec":I
    .restart local v6    # "mant":[C
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    :cond_11
    const/16 v33, 0x0

    .restart local v33    # "nzeros":I
    goto :goto_8

    .line 3707
    .end local v6    # "mant":[C
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v33    # "nzeros":I
    .end local v35    # "scale":I
    :cond_12
    const/16 v4, 0x67

    move/from16 v0, p5

    if-ne v0, v4, :cond_17

    .line 3708
    move/from16 v19, p6

    .line 3709
    .restart local v19    # "prec":I
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_15

    .line 3710
    const/16 v19, 0x6

    .line 3714
    :cond_13
    :goto_9
    const-wide/16 v4, 0x1

    const/4 v7, 0x4

    invoke-static {v4, v5, v7}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v37

    .line 3715
    .local v37, "tenToTheNegFour":Ljava/math/BigDecimal;
    const-wide/16 v4, 0x1

    move/from16 v0, v19

    neg-int v7, v0

    invoke-static {v4, v5, v7}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v38

    .line 3716
    .local v38, "tenToThePrec":Ljava/math/BigDecimal;
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3717
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    .line 3718
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 3720
    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    neg-int v4, v4

    .line 3721
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 3720
    add-int v30, v4, v5

    .line 3733
    .local v30, "e":I
    sub-int v4, v19, v30

    add-int/lit8 v19, v4, -0x1

    .line 3735
    const/16 v18, 0x66

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v20, p7

    invoke-direct/range {v13 .. v20}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto/16 :goto_5

    .line 3711
    .end local v30    # "e":I
    .end local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_15
    if-nez p6, :cond_13

    .line 3712
    const/16 v19, 0x1

    goto :goto_9

    .line 3738
    .restart local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .restart local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_16
    add-int/lit8 v26, v19, -0x1

    const/16 v25, 0x65

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move/from16 v27, p7

    invoke-direct/range {v20 .. v27}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto/16 :goto_5

    .line 3740
    .end local v19    # "prec":I
    .end local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_17
    const/16 v4, 0x61

    move/from16 v0, p5

    if-ne v0, v4, :cond_a

    .line 3743
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private print(Ljava/math/BigDecimal;Ljava/util/Locale;)V
    .locals 8
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3591
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x61

    if-ne v0, v3, :cond_0

    .line 3592
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3593
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3594
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 v7, 0x1

    .line 3595
    .local v7, "neg":Z
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v2

    .line 3597
    .local v2, "v":Ljava/math/BigDecimal;
    invoke-direct {p0, v1, v7}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3600
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v5, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v6, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    .line 3603
    invoke-direct {p0, v1, v7}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3606
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3590
    return-void

    .line 3594
    .end local v2    # "v":Ljava/math/BigDecimal;
    .end local v7    # "neg":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "neg":Z
    goto :goto_0
.end method

.method private print(Ljava/math/BigInteger;Ljava/util/Locale;)V
    .locals 12
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/16 v4, 0x30

    .line 3205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3206
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ne v0, v11, :cond_1

    const/4 v8, 0x1

    .line 3207
    .local v8, "neg":Z
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 3210
    .local v10, "v":Ljava/math/BigInteger;
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3213
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    .line 3214
    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 3215
    .local v2, "va":[C
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-direct {p0, v0, v4, v8}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3254
    .end local v2    # "va":[C
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ne v0, v11, :cond_c

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v1, v0}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3257
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3204
    return-void

    .line 3206
    .end local v8    # "neg":Z
    .end local v10    # "v":Ljava/math/BigInteger;
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "neg":Z
    goto :goto_0

    .line 3216
    .restart local v10    # "v":Ljava/math/BigInteger;
    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_6

    .line 3217
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 3219
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v7, v0, v3

    .line 3220
    .local v7, "len":I
    if-eqz v8, :cond_3

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3221
    add-int/lit8 v7, v7, 0x1

    .line 3224
    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3225
    add-int/lit8 v7, v7, 0x1

    .line 3226
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3228
    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3229
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_5

    .line 3230
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3229
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3232
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3233
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_6
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    .line 3234
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 3236
    .restart local v9    # "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v7, v0, v3

    .line 3237
    .restart local v7    # "len":I
    if-eqz v8, :cond_7

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3238
    add-int/lit8 v7, v7, 0x1

    .line 3241
    :cond_7
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3242
    add-int/lit8 v7, v7, 0x2

    .line 3243
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "0X"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3245
    :cond_8
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3246
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_a

    .line 3247
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3246
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 3243
    .end local v6    # "i":I
    :cond_9
    const-string/jumbo v0, "0x"

    goto :goto_4

    .line 3248
    :cond_a
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3249
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 3250
    :cond_b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3254
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private print(Ljava/util/Calendar;CLjava/util/Locale;)V
    .locals 4
    .param p1, "t"    # Ljava/util/Calendar;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3907
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 3910
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3911
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3912
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 3914
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v2}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3904
    return-void
.end method

.method private print(SLjava/util/Locale;)V
    .locals 6
    .param p1, "value"    # S
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3103
    int-to-long v0, p1

    .line 3104
    .local v0, "v":J
    if-gez p1, :cond_2

    .line 3105
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_0

    .line 3106
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v4, 0x78

    if-ne v3, v4, :cond_2

    .line 3107
    :cond_0
    const-wide/32 v4, 0x10000

    add-long/2addr v0, v4

    .line 3108
    sget-boolean v3, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 3110
    :cond_2
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3102
    return-void
.end method

.method private printBoolean(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2928
    if-eqz p1, :cond_1

    .line 2929
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2930
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2934
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2926
    return-void

    .line 2931
    .end local v0    # "s":Ljava/lang/String;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 2933
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method private printCharacter(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2879
    if-nez p1, :cond_0

    .line 2880
    const-string/jumbo v4, "null"

    invoke-direct {p0, v4}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2881
    return-void

    .line 2883
    :cond_0
    const/4 v3, 0x0

    .line 2884
    .local v3, "s":Ljava/lang/String;
    instance-of v4, p1, Ljava/lang/Character;

    if-eqz v4, :cond_1

    .line 2885
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2907
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2878
    return-void

    .line 2886
    .restart local v3    # "s":Ljava/lang/String;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/lang/Byte;

    if-eqz v4, :cond_3

    .line 2887
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 2888
    .local v0, "i":B
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2889
    new-instance v3, Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .local v3, "s":Ljava/lang/String;
    goto :goto_0

    .line 2891
    .local v3, "s":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    .line 2892
    .end local v0    # "i":B
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    instance-of v4, p1, Ljava/lang/Short;

    if-eqz v4, :cond_5

    .line 2893
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 2894
    .local v2, "i":S
    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2895
    new-instance v3, Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .local v3, "s":Ljava/lang/String;
    goto :goto_0

    .line 2897
    .local v3, "s":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v2}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    .line 2898
    .end local v2    # "i":S
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_5
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 2899
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2900
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2901
    new-instance v3, Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .local v3, "s":Ljava/lang/String;
    goto :goto_0

    .line 2903
    .local v3, "s":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    .line 2905
    .end local v1    # "i":I
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_7
    iget-char v4, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v4, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_0
.end method

.method private printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2849
    if-nez p1, :cond_0

    .line 2850
    const-string/jumbo v1, "null"

    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2851
    return-void

    .line 2853
    :cond_0
    const/4 v0, 0x0

    .line 2857
    .local v0, "cal":Ljava/util/Calendar;
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 2860
    if-nez p2, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_0
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2861
    .local v0, "cal":Ljava/util/Calendar;
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2875
    .end local v0    # "cal":Ljava/util/Calendar;
    :goto_1
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/util/Calendar;CLjava/util/Locale;)V

    .line 2848
    return-void

    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    move-object v1, p2

    .line 2860
    goto :goto_0

    .line 2862
    :cond_2
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 2865
    if-nez p2, :cond_3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_2
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2866
    .local v0, "cal":Ljava/util/Calendar;
    check-cast p1, Ljava/util/Date;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1

    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    move-object v1, p2

    .line 2865
    goto :goto_2

    .line 2867
    :cond_4
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_5

    .line 2868
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cal":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 2869
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    goto :goto_1

    .line 2871
    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_5
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_1
.end method

.method private printFloat(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2836
    if-nez p1, :cond_0

    .line 2837
    const-string/jumbo v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2835
    .end local p1    # "arg":Ljava/lang/Object;
    :goto_0
    return-void

    .line 2838
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 2839
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(FLjava/util/Locale;)V

    goto :goto_0

    .line 2840
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 2841
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    goto :goto_0

    .line 2842
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 2843
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigDecimal;Ljava/util/Locale;)V

    goto :goto_0

    .line 2845
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_0
.end method

.method private printHashCode(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2938
    if-nez p1, :cond_0

    .line 2939
    const-string/jumbo v0, "null"

    .line 2941
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2937
    return-void

    .line 2940
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private printInteger(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2819
    if-nez p1, :cond_0

    .line 2820
    const-string/jumbo v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2818
    .end local p1    # "arg":Ljava/lang/Object;
    :goto_0
    return-void

    .line 2821
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 2822
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(BLjava/util/Locale;)V

    goto :goto_0

    .line 2823
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 2824
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(SLjava/util/Locale;)V

    goto :goto_0

    .line 2825
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2826
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(ILjava/util/Locale;)V

    goto :goto_0

    .line 2827
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 2828
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    goto :goto_0

    .line 2829
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    .line 2830
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigInteger;Ljava/util/Locale;)V

    goto :goto_0

    .line 2832
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_5
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_0
.end method

.method private printString(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2911
    instance-of v2, p1, Ljava/util/Formattable;

    if-eqz v2, :cond_1

    .line 2912
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    .line 2913
    .local v0, "fmt":Ljava/util/Formatter;
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    if-eq v2, p2, :cond_0

    .line 2914
    new-instance v1, Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .end local v0    # "fmt":Ljava/util/Formatter;
    .local v1, "fmt":Ljava/util/Formatter;
    move-object v0, v1

    .line 2915
    .end local v1    # "fmt":Ljava/util/Formatter;
    .restart local v0    # "fmt":Ljava/util/Formatter;
    :cond_0
    check-cast p1, Ljava/util/Formattable;

    .end local p1    # "arg":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-interface {p1, v0, v2, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 2910
    .end local v0    # "fmt":Ljava/util/Formatter;
    :goto_0
    return-void

    .line 2917
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2918
    sget-object v2, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/16 v3, 0x73

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 2919
    :cond_2
    if-nez p1, :cond_3

    .line 2920
    const-string/jumbo v2, "null"

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2922
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .prologue
    .line 3199
    if-eqz p2, :cond_0

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3200
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3201
    :cond_0
    return-object p1
.end method

.method private trailingZeros([CI)[C
    .locals 4
    .param p1, "mant"    # [C
    .param p2, "nzeros"    # I

    .prologue
    const/4 v3, 0x0

    .line 3894
    move-object v1, p1

    .line 3895
    .local v1, "tmp":[C
    if-lez p2, :cond_0

    .line 3896
    array-length v2, p1

    add-int/2addr v2, p2

    new-array v1, v2, [C

    .line 3897
    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3898
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3899
    const/16 v2, 0x30

    aput-char v2, v1, v0

    .line 3898
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3901
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private width(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2691
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2692
    if-eqz p1, :cond_0

    .line 2694
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2695
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-gez v1, :cond_0

    .line 2696
    new-instance v1, Ljava/util/IllegalFormatWidthException;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2697
    :catch_0
    move-exception v0

    .line 2698
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2701
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    return v1
.end method


# virtual methods
.method flags()Ljava/util/Formatter$Flags;
    .locals 1

    .prologue
    .line 2687
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    return-object v0
.end method

.method public index()I
    .locals 1

    .prologue
    .line 2676
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v0
.end method

.method precision()I
    .locals 1

    .prologue
    .line 2723
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    return v0
.end method

.method public print(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2778
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v0, :cond_0

    .line 2779
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2780
    return-void

    .line 2782
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    sparse-switch v0, :sswitch_data_0

    .line 2814
    sget-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2786
    :sswitch_0
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printInteger(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2777
    :cond_1
    :goto_0
    return-void

    .line 2792
    :sswitch_1
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printFloat(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_0

    .line 2796
    :sswitch_2
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printCharacter(Ljava/lang/Object;)V

    goto :goto_0

    .line 2799
    :sswitch_3
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printBoolean(Ljava/lang/Object;)V

    goto :goto_0

    .line 2802
    :sswitch_4
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printString(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_0

    .line 2805
    :sswitch_5
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printHashCode(Ljava/lang/Object;)V

    goto :goto_0

    .line 2808
    :sswitch_6
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 2811
    :sswitch_7
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 2782
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_7
        0x43 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_3
        0x63 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_5
        0x6e -> :sswitch_6
        0x6f -> :sswitch_0
        0x73 -> :sswitch_4
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2969
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2971
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v2

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v0

    .line 2972
    .local v0, "dupf":Ljava/util/Formatter$Flags;
    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    if-lez v2, :cond_0

    .line 2974
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2975
    :cond_0
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v2, v4, :cond_1

    .line 2976
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2977
    :cond_1
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v2, v4, :cond_2

    .line 2978
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2979
    :cond_2
    iget-boolean v2, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v2, :cond_3

    .line 2980
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x54

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2981
    :cond_3
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2982
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 2981
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2983
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2980
    :cond_4
    const/16 v2, 0x74

    goto :goto_0

    .line 2982
    :cond_5
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    goto :goto_1
.end method

.method width()I
    .locals 1

    .prologue
    .line 2705
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    return v0
.end method
