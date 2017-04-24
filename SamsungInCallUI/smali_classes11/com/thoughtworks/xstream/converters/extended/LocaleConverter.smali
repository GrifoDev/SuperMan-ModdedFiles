.class public Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "LocaleConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method

.method private underscorePositions(Ljava/lang/String;)[I
    .locals 5

    const/4 v3, 0x2

    new-array v2, v3, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0x5f

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->underscorePositions(Ljava/lang/String;)[I

    move-result-object v2

    aget v4, v2, v5

    if-ne v4, v7, :cond_0

    move-object v1, p1

    const-string v0, ""

    const-string v3, ""

    :goto_0
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    aget v4, v2, v6

    if-ne v4, v7, :cond_1

    aget v4, v2, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aget v4, v2, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    goto :goto_0

    :cond_1
    aget v4, v2, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aget v4, v2, v5

    add-int/lit8 v4, v4, 0x1

    aget v5, v2, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aget v4, v2, v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
