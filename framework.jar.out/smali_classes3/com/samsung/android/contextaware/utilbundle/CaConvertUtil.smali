.class public Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;
.super Ljava/lang/Object;
.source "CaConvertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrToString([B)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v2, "Data is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-object v4

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v0, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCompleteOfTwo(I)I
    .locals 2

    move v0, p0

    if-gez p0, :cond_0

    add-int/lit16 v1, p0, 0xff

    add-int/lit8 v0, v1, 0x1

    :cond_0
    return v0
.end method

.method public static intToByteArr(II)[B
    .locals 5

    const/4 v4, 0x4

    if-le p1, v4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int/lit8 v4, v1, 0x8

    shr-int v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v3, p1, [B

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    aget-byte v4, v0, v2

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public static strToDouble(Ljava/lang/String;)D
    .locals 6

    const-wide/16 v4, 0x0

    if-nez p0, :cond_0

    return-wide v4

    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    return-wide v4

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    return-wide v4
.end method

.method public static strToFloat(Ljava/lang/String;)F
    .locals 8

    const/4 v7, 0x0

    if-nez p0, :cond_0

    return v7

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v6, v4

    int-to-float v7, v0

    div-float v5, v6, v7

    :goto_0
    return v5

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    return v7

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    return v7
.end method

.method public static strToInt(Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x0

    if-nez p0, :cond_0

    return v7

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    :goto_0
    return v4

    :cond_1
    const-string/jumbo v5, "B"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    return v7

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    return v7
.end method

.method public static strToLong(Ljava/lang/String;)J
    .locals 10

    const-wide/16 v8, 0x0

    if-nez p0, :cond_0

    return-wide v8

    :cond_0
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "0X"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    :goto_0
    return-wide v4

    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    return-wide v8

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    return-wide v8
.end method

.method public static stringToByteArray(Ljava/lang/String;)[B
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x2c

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-object v11

    :cond_1
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v1, v7, :cond_3

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_2

    :cond_3
    new-array v0, v3, [B

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v5, v4

    :goto_0
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    add-int/lit8 v4, v5, 0x1

    invoke-static {v7, v9, v0, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v6, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_0

    :cond_4
    return-object v0
.end method
