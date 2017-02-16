.class public Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;
.super Ljava/lang/Object;
.source "CaConvertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 191
    if-eqz p0, :cond_0

    array-length v3, p0

    if-gtz v3, :cond_1

    .line 192
    :cond_0
    const-string/jumbo v2, "Data is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 193
    return-object v4

    .line 196
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v1, "str":Ljava/lang/StringBuffer;
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v0, p0, v2

    .line 198
    .local v0, "k":B
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

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "k":B
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 204
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCompleteOfTwo(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 257
    move v0, p0

    .line 258
    .local v0, "complete":I
    if-gez p0, :cond_0

    .line 259
    add-int/lit16 v1, p0, 0xff

    add-int/lit8 v0, v1, 0x1

    .line 261
    :cond_0
    return v0
.end method

.method public static intToByteArr(II)[B
    .locals 5
    .param p0, "value"    # I
    .param p1, "size"    # I

    .prologue
    .line 163
    const/4 v4, 0x4

    if-le p1, v4, :cond_0

    .line 164
    const/4 v4, 0x0

    return-object v4

    .line 167
    :cond_0
    new-array v0, p1, [B

    .line 169
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 170
    mul-int/lit8 v4, v1, 0x8

    shr-int v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    new-array v3, p1, [B

    .line 174
    .local v3, "result":[B
    array-length v2, v0

    .line 176
    .local v2, "len":I
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 177
    add-int/lit8 v2, v2, -0x1

    aget-byte v4, v0, v2

    aput-byte v4, v3, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_2
    return-object v3
.end method

.method public static strToDouble(Ljava/lang/String;)D
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 134
    if-nez p0, :cond_0

    .line 135
    return-wide v4

    .line 138
    :cond_0
    const-wide/16 v2, 0x0

    .line 141
    .local v2, "resultDouble":D
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 150
    return-wide v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 147
    return-wide v4

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 144
    return-wide v4
.end method

.method public static strToFloat(Ljava/lang/String;)F
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 68
    if-nez p0, :cond_0

    .line 69
    return v7

    .line 72
    :cond_0
    const/4 v5, 0x0

    .line 75
    .local v5, "resultFloat":F
    :try_start_0
    const-string/jumbo v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 77
    .local v3, "index":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v4

    .line 78
    .local v4, "numerator":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "denominator":I
    int-to-float v6, v4

    int-to-float v7, v0

    div-float v5, v6, v7

    .line 92
    .end local v0    # "denominator":I
    .end local v3    # "index":I
    .end local v4    # "numerator":I
    :goto_0
    return v5

    .line 82
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 89
    return v7

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 86
    return v7
.end method

.method public static strToInt(Ljava/lang/String;)I
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 34
    if-nez p0, :cond_0

    .line 35
    return v7

    .line 38
    :cond_0
    const/4 v4, 0x0

    .line 40
    .local v4, "resultInt":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "hexValue":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 57
    .end local v3    # "hexValue":Ljava/lang/String;
    :goto_0
    return v4

    .line 43
    :cond_1
    const-string/jumbo v5, "B"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "binValue":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 47
    .end local v0    # "binValue":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 54
    return v7

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 51
    return v7
.end method

.method public static strToLong(Ljava/lang/String;)J
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 103
    if-nez p0, :cond_0

    .line 104
    return-wide v8

    .line 107
    :cond_0
    const-wide/16 v4, 0x0

    .line 109
    .local v4, "resultLong":J
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "0X"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "hexValue":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 123
    .end local v2    # "hexValue":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 113
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 120
    return-wide v8

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 117
    return-wide v8
.end method

.method public static stringToByteArray(Ljava/lang/String;)[B
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x2c

    .line 215
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 216
    :cond_0
    return-object v11

    .line 219
    :cond_1
    const/4 v6, 0x0

    .line 220
    .local v6, "startIdx":I
    const/4 v1, 0x0

    .line 222
    .local v1, "endIdx":I
    const/4 v3, 0x0

    .line 223
    .local v3, "len":I
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 224
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v1, v7, :cond_3

    .line 225
    add-int/lit8 v6, v1, 0x1

    .line 226
    add-int/lit8 v3, v3, 0x1

    .line 227
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 228
    if-gez v1, :cond_2

    .line 233
    :cond_3
    new-array v0, v3, [B

    .line 234
    .local v0, "arr":[B
    const/4 v6, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    const/4 v4, 0x0

    .line 238
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v5, v4

    .end local v4    # "size":I
    .local v5, "size":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 239
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 241
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    .line 242
    add-int/lit8 v4, v5, 0x1

    .line 240
    .end local v5    # "size":I
    .restart local v4    # "size":I
    invoke-static {v7, v9, v0, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 243
    add-int/lit8 v6, v1, 0x2

    .line 238
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "size":I
    .restart local v5    # "size":I
    goto :goto_0

    .line 246
    :cond_4
    return-object v0
.end method
