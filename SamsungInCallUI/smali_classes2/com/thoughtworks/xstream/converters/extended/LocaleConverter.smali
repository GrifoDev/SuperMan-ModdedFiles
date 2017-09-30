.class public Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method

.method private underscorePositions(Ljava/lang/String;)[I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [I

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    if-nez v0, :cond_0

    move v2, v1

    :goto_1
    const/16 v4, 0x5f

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget v2, v3, v2

    goto :goto_1

    :cond_1
    return-object v3
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
    .locals 5

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->underscorePositions(Ljava/lang/String;)[I

    move-result-object v0

    aget v1, v0, v3

    if-ne v1, v2, :cond_0

    const-string v1, ""

    const-string v0, ""

    :goto_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    aget v1, v0, v4

    if-ne v1, v2, :cond_1

    aget v1, v0, v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    move-object p1, v2

    goto :goto_0

    :cond_1
    aget v1, v0, v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aget v3, v0, v4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p1, v2

    goto :goto_0
.end method
