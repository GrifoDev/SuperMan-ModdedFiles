.class final Lcom/google/common/primitives/ParseRequest;
.super Ljava/lang/Object;
.source "ParseRequest.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# instance fields
.field final radix:I

.field final rawValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "rawValue"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/google/common/primitives/ParseRequest;->radix:I

    .line 33
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;
    .locals 5
    .param p0, "stringValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 37
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "empty string"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 44
    .local v0, "firstChar":C
    const-string v3, "0x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "0X"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "rawValue":Ljava/lang/String;
    const/16 v1, 0x10

    .line 58
    .local v1, "radix":I
    :goto_0
    new-instance v3, Lcom/google/common/primitives/ParseRequest;

    invoke-direct {v3, v2, v1}, Lcom/google/common/primitives/ParseRequest;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 47
    .end local v1    # "radix":I
    .end local v2    # "rawValue":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x23

    if-ne v0, v3, :cond_3

    .line 48
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    .restart local v2    # "rawValue":Ljava/lang/String;
    const/16 v1, 0x10

    .restart local v1    # "radix":I
    goto :goto_0

    .line 50
    .end local v1    # "radix":I
    .end local v2    # "rawValue":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x30

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 51
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .restart local v2    # "rawValue":Ljava/lang/String;
    const/16 v1, 0x8

    .restart local v1    # "radix":I
    goto :goto_0

    .line 54
    .end local v1    # "radix":I
    .end local v2    # "rawValue":Ljava/lang/String;
    :cond_4
    move-object v2, p0

    .line 55
    .restart local v2    # "rawValue":Ljava/lang/String;
    const/16 v1, 0xa

    .restart local v1    # "radix":I
    goto :goto_0
.end method
