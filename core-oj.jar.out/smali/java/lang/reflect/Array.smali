.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 774
    if-nez p0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 777
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 779
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static native createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method private static native createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 169
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 170
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    aget-object v0, p0, p1

    return-object v0

    .line 172
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    .line 173
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 175
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 176
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 178
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 179
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 181
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 182
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 184
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    .line 185
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 187
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 188
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 190
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    .line 191
    new-instance v0, Ljava/lang/Float;

    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    .line 193
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, [D

    if-eqz v0, :cond_9

    .line 194
    new-instance v0, Ljava/lang/Double;

    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v2, p0, p1

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 196
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    if-nez p0, :cond_a

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static getBoolean(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 219
    instance-of v0, p0, [Z

    if-eqz v0, :cond_0

    .line 220
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    aget-boolean v0, p0, p1

    return v0

    .line 222
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getByte(Ljava/lang/Object;I)B
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 242
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 243
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    return v0

    .line 245
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getChar(Ljava/lang/Object;I)C
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 265
    instance-of v0, p0, [C

    if-eqz v0, :cond_0

    .line 266
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    return v0

    .line 268
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getDouble(Ljava/lang/Object;I)D
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 406
    instance-of v0, p0, [D

    if-eqz v0, :cond_0

    .line 407
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    return-wide v0

    .line 408
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 409
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    int-to-double v0, v0

    return-wide v0

    .line 410
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 411
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    int-to-double v0, v0

    return-wide v0

    .line 412
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [F

    if-eqz v0, :cond_3

    .line 413
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    float-to-double v0, v0

    return-wide v0

    .line 414
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [I

    if-eqz v0, :cond_4

    .line 415
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    int-to-double v0, v0

    return-wide v0

    .line 416
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [J

    if-eqz v0, :cond_5

    .line 417
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    long-to-double v0, v0

    return-wide v0

    .line 418
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [S

    if-eqz v0, :cond_6

    .line 419
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    int-to-double v0, v0

    return-wide v0

    .line 421
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getFloat(Ljava/lang/Object;I)F
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 373
    instance-of v0, p0, [F

    if-eqz v0, :cond_0

    .line 374
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    return v0

    .line 375
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 376
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    int-to-float v0, v0

    return v0

    .line 377
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 378
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    int-to-float v0, v0

    return v0

    .line 379
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 380
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    int-to-float v0, v0

    return v0

    .line 381
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 382
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    long-to-float v0, v0

    return v0

    .line 383
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 384
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    int-to-float v0, v0

    return v0

    .line 386
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getInt(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 313
    instance-of v0, p0, [I

    if-eqz v0, :cond_0

    .line 314
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    return v0

    .line 315
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 316
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    return v0

    .line 317
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 318
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    return v0

    .line 319
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [S

    if-eqz v0, :cond_3

    .line 320
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    return v0

    .line 322
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 130
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 131
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 132
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1

    .line 133
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 134
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 135
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 136
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [C

    if-eqz v0, :cond_3

    .line 137
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 138
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    .line 139
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 140
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    .line 141
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 142
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    .line 143
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 144
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 145
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 146
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [S

    if-eqz v0, :cond_8

    .line 147
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 149
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getLong(Ljava/lang/Object;I)J
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 342
    instance-of v0, p0, [J

    if-eqz v0, :cond_0

    .line 343
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    return-wide v0

    .line 344
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 345
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    int-to-long v0, v0

    return-wide v0

    .line 346
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    if-eqz v0, :cond_2

    .line 347
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    int-to-long v0, v0

    return-wide v0

    .line 348
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 349
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    int-to-long v0, v0

    return-wide v0

    .line 350
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [S

    if-eqz v0, :cond_4

    .line 351
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    int-to-long v0, v0

    return-wide v0

    .line 353
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getShort(Ljava/lang/Object;I)S
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 288
    instance-of v0, p0, [S

    if-eqz v0, :cond_0

    .line 289
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    return v0

    .line 290
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 291
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    int-to-short v0, v0

    return v0

    .line 293
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Array has incompatible type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 736
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 738
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 739
    new-array v0, p1, [C

    return-object v0

    .line 740
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 741
    new-array v0, p1, [I

    return-object v0

    .line 742
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 743
    new-array v0, p1, [B

    return-object v0

    .line 744
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 745
    new-array v0, p1, [Z

    return-object v0

    .line 746
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 747
    new-array v0, p1, [S

    return-object v0

    .line 748
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 749
    new-array v0, p1, [J

    return-object v0

    .line 750
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 751
    new-array v0, p1, [F

    return-object v0

    .line 752
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 753
    new-array v0, p1, [D

    return-object v0

    .line 754
    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    .line 755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .locals 3
    .param p1, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad number of dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    if-nez p0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "componentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 446
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 447
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    :cond_1
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    aput-object p2, p0, p1

    .line 441
    .end local p2    # "value":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    .line 448
    .restart local p0    # "array":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 452
    :cond_4
    if-nez p2, :cond_5

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Primitive array can\'t take null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_5
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 456
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 457
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_7

    .line 458
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_0

    .line 459
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_8

    .line 460
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_0

    .line 461
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 462
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_0

    .line 463
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 464
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_0

    .line 465
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 466
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_0

    .line 467
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 468
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 469
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 470
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_0
.end method

.method public static setBoolean(Ljava/lang/Object;IZ)V
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 494
    instance-of v0, p0, [Z

    if-eqz v0, :cond_0

    .line 495
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    aput-boolean p2, p0, p1

    .line 493
    return-void

    .line 497
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setByte(Ljava/lang/Object;IB)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 520
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 521
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aput-byte p2, p0, p1

    .line 519
    :goto_0
    return-void

    .line 522
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 523
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 524
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 525
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 526
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 527
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    goto :goto_0

    .line 528
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 529
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 530
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 531
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    int-to-short v0, p2

    aput-short v0, p0, p1

    goto :goto_0

    .line 533
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setChar(Ljava/lang/Object;IC)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 556
    instance-of v0, p0, [C

    if-eqz v0, :cond_0

    .line 557
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aput-char p2, p0, p1

    .line 555
    :goto_0
    return-void

    .line 558
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 559
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 560
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 561
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 562
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 563
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    goto :goto_0

    .line 564
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 565
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 567
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setDouble(Ljava/lang/Object;ID)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 714
    instance-of v0, p0, [D

    if-eqz v0, :cond_0

    .line 715
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    aput-wide p2, p0, p1

    .line 713
    return-void

    .line 717
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setFloat(Ljava/lang/Object;IF)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 686
    instance-of v0, p0, [F

    if-eqz v0, :cond_0

    .line 687
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    .line 685
    :goto_0
    return-void

    .line 688
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 689
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    float-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 691
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setInt(Ljava/lang/Object;II)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 624
    instance-of v0, p0, [I

    if-eqz v0, :cond_0

    .line 625
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    .line 623
    :goto_0
    return-void

    .line 626
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 627
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 628
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 629
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 630
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [J

    if-eqz v0, :cond_3

    .line 631
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 633
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setLong(Ljava/lang/Object;IJ)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 656
    instance-of v0, p0, [J

    if-eqz v0, :cond_0

    .line 657
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aput-wide p2, p0, p1

    .line 655
    :goto_0
    return-void

    .line 658
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 659
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    long-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 660
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 661
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    long-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 663
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setShort(Ljava/lang/Object;IS)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 590
    instance-of v0, p0, [S

    if-eqz v0, :cond_0

    .line 591
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aput-short p2, p0, p1

    .line 589
    :goto_0
    return-void

    .line 592
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    if-eqz v0, :cond_1

    .line 593
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 594
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    if-eqz v0, :cond_2

    .line 595
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_0

    .line 596
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 597
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    goto :goto_0

    .line 598
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 599
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_0

    .line 601
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
