.class public Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "LocaleConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method

.method private underscorePositions(Ljava/lang/String;)[I
    .locals 5
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 51
    .local v2, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 52
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 53
    .local v1, "last":I
    :goto_1
    const/16 v3, 0x5f

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    aput v3, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "last":I
    :cond_0
    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    goto :goto_1

    .line 55
    :cond_1
    return-object v2
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 27
    const-class v0, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->underscorePositions(Ljava/lang/String;)[I

    move-result-object v2

    .line 33
    .local v2, "underscorePositions":[I
    aget v4, v2, v5

    if-ne v4, v7, :cond_0

    .line 34
    move-object v1, p1

    .line 35
    .local v1, "language":Ljava/lang/String;
    const-string v0, ""

    .line 36
    .local v0, "country":Ljava/lang/String;
    const-string v3, ""

    .line 46
    .local v3, "variant":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 37
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_0
    aget v4, v2, v6

    if-ne v4, v7, :cond_1

    .line 38
    aget v4, v2, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 39
    .restart local v1    # "language":Ljava/lang/String;
    aget v4, v2, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .restart local v0    # "country":Ljava/lang/String;
    const-string v3, ""

    .restart local v3    # "variant":Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_1
    aget v4, v2, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 43
    .restart local v1    # "language":Ljava/lang/String;
    aget v4, v2, v5

    add-int/lit8 v4, v4, 0x1

    aget v5, v2, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    .restart local v0    # "country":Ljava/lang/String;
    aget v4, v2, v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "variant":Ljava/lang/String;
    goto :goto_0
.end method
