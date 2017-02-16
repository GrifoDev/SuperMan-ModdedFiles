.class public Lsun/security/util/DerValue;
.super Ljava/lang/Object;
.source "DerValue.java"


# static fields
.field public static final TAG_APPLICATION:B = 0x40t

.field public static final TAG_CONTEXT:B = -0x80t

.field public static final TAG_PRIVATE:B = -0x40t

.field public static final TAG_UNIVERSAL:B = 0x0t

.field public static final tag_BMPString:B = 0x1et

.field public static final tag_BitString:B = 0x3t

.field public static final tag_Boolean:B = 0x1t

.field public static final tag_Enumerated:B = 0xat

.field public static final tag_GeneralString:B = 0x1bt

.field public static final tag_GeneralizedTime:B = 0x18t

.field public static final tag_IA5String:B = 0x16t

.field public static final tag_Integer:B = 0x2t

.field public static final tag_Null:B = 0x5t

.field public static final tag_ObjectId:B = 0x6t

.field public static final tag_OctetString:B = 0x4t

.field public static final tag_PrintableString:B = 0x13t

.field public static final tag_Sequence:B = 0x30t

.field public static final tag_SequenceOf:B = 0x30t

.field public static final tag_Set:B = 0x31t

.field public static final tag_SetOf:B = 0x31t

.field public static final tag_T61String:B = 0x14t

.field public static final tag_UTF8String:B = 0xct

.field public static final tag_UniversalString:B = 0x1ct

.field public static final tag_UtcTime:B = 0x17t


# instance fields
.field protected buffer:Lsun/security/util/DerInputBuffer;

.field public final data:Lsun/security/util/DerInputStream;

.field private length:I

.field private originalEncodedForm:[B

.field public tag:B


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 1
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-direct {p0, p1, p2}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 231
    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "data"    # [B

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 243
    new-instance v1, Lsun/security/util/DerInputBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 244
    array-length v0, p2

    iput v0, p0, Lsun/security/util/DerValue;->length:I

    .line 245
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 246
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v1, 0x1

    .line 216
    .local v1, "isPrintableString":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    const/4 v1, 0x0

    .line 223
    :cond_0
    if-eqz v1, :cond_2

    const/16 v2, 0x13

    :goto_1
    invoke-direct {p0, v2, p1}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object v2

    iput-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 214
    return-void

    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_2
    const/16 v2, 0xc

    goto :goto_1
.end method

.method constructor <init>(Lsun/security/util/DerInputBuffer;Z)V
    .locals 12
    .param p1, "in"    # Lsun/security/util/DerInputBuffer;
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->getPos()I

    move-result v8

    .line 258
    .local v8, "startPosInInput":I
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v9

    int-to-byte v9, v9

    iput-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    .line 259
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v9

    int-to-byte v5, v9

    .line 260
    .local v5, "lenByte":B
    and-int/lit16 v9, v5, 0xff

    invoke-static {v9, p1}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lsun/security/util/DerValue;->length:I

    .line 261
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 262
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v3

    .line 263
    .local v3, "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v7

    .line 264
    .local v7, "readLen":I
    const/4 v6, 0x2

    .line 265
    .local v6, "offset":I
    add-int/lit8 v9, v7, 0x2

    new-array v4, v9, [B

    .line 266
    .local v4, "indefData":[B
    iget-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 267
    const/4 v9, 0x1

    aput-byte v5, v4, v9

    .line 268
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v4, v6, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 270
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 271
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 272
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v3, Lsun/security/util/DerInputBuffer;

    .end local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v1, v4}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v9

    invoke-direct {v3, v9}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    .line 273
    .restart local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    iget-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 274
    new-instance v9, Ljava/io/IOException;

    .line 275
    const-string/jumbo v10, "Indefinite length encoding not supported"

    .line 274
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 276
    :cond_0
    invoke-static {v3}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lsun/security/util/DerValue;->length:I

    .line 277
    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v9

    iput-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 278
    iget-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget v10, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v9, v10}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 279
    new-instance v9, Lsun/security/util/DerInputStream;

    iget-object v10, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v9, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 283
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    add-int/lit8 v9, v9, 0x2

    int-to-long v10, v9

    invoke-virtual {p1, v10, v11}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 293
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    .end local v4    # "indefData":[B
    .end local v6    # "offset":I
    .end local v7    # "readLen":I
    :goto_0
    if-eqz p2, :cond_1

    .line 294
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->getPos()I

    move-result v9

    sub-int v0, v9, v8

    .line 295
    .local v0, "consumed":I
    invoke-virtual {p1, v8, v0}, Lsun/security/util/DerInputBuffer;->getSlice(II)[B

    move-result-object v9

    iput-object v9, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    .line 253
    .end local v0    # "consumed":I
    :cond_1
    return-void

    .line 286
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v9

    iput-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 287
    iget-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget v10, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v9, v10}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 288
    new-instance v9, Lsun/security/util/DerInputStream;

    iget-object v10, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v9, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 290
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    int-to-long v10, v9

    invoke-virtual {p1, v10, v11}, Lsun/security/util/DerInputBuffer;->skip(J)J

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 306
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 319
    return-void
.end method

.method private append([B[B)[B
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 465
    if-nez p1, :cond_0

    .line 466
    return-object p2

    .line 468
    :cond_0
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 469
    .local v0, "ret":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 470
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 472
    return-object v0
.end method

.method public static createTag(BZB)B
    .locals 2
    .param p0, "tagClass"    # B
    .param p1, "form"    # Z
    .param p2, "val"    # B

    .prologue
    .line 931
    or-int v1, p0, p2

    int-to-byte v0, v1

    .line 932
    .local v0, "tag":B
    if-eqz p1, :cond_0

    .line 933
    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 935
    :cond_0
    return v0
.end method

.method private static doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z
    .locals 4
    .param p0, "d1"    # Lsun/security/util/DerValue;
    .param p1, "d2"    # Lsun/security/util/DerValue;

    .prologue
    .line 803
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 805
    :try_start_1
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    .line 806
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    .line 807
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v3, p1, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, v3}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    .line 804
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 803
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(BLjava/lang/String;)Lsun/security/util/DerInputStream;
    .locals 5
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 339
    .local v1, "enc":Ljava/lang/String;
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 341
    sparse-switch p1, :sswitch_data_0

    .line 359
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unsupported DER string type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :sswitch_0
    const-string/jumbo v1, "ASCII"

    .line 362
    .local v1, "enc":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 363
    .local v0, "buf":[B
    array-length v3, v0

    iput v3, p0, Lsun/security/util/DerValue;->length:I

    .line 364
    new-instance v3, Lsun/security/util/DerInputBuffer;

    invoke-direct {v3, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 365
    new-instance v2, Lsun/security/util/DerInputStream;

    iget-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v3}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    .line 366
    .local v2, "result":Lsun/security/util/DerInputStream;
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 367
    return-object v2

    .line 348
    .end local v0    # "buf":[B
    .end local v2    # "result":Lsun/security/util/DerInputStream;
    .local v1, "enc":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v1, "ISO-8859-1"

    .local v1, "enc":Ljava/lang/String;
    goto :goto_0

    .line 351
    .local v1, "enc":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v1, "UnicodeBigUnmarked"

    .local v1, "enc":Ljava/lang/String;
    goto :goto_0

    .line 354
    .local v1, "enc":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v1, "UTF8"

    .local v1, "enc":Ljava/lang/String;
    goto :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;
    .locals 10
    .param p1, "fullyBuffered"    # Z
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 376
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    iput-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    .line 377
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v4, v7

    .line 378
    .local v4, "lenByte":B
    and-int/lit16 v7, v4, 0xff

    invoke-static {v7, p2}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    .line 379
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 380
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 381
    .local v6, "readLen":I
    const/4 v5, 0x2

    .line 382
    .local v5, "offset":I
    add-int/lit8 v7, v6, 0x2

    new-array v3, v7, [B

    .line 383
    .local v3, "indefData":[B
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v8, 0x0

    aput-byte v7, v3, v8

    .line 384
    aput-byte v4, v3, v9

    .line 385
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 386
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v3, v5, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 387
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 388
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 389
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .end local p2    # "in":Ljava/io/InputStream;
    invoke-virtual {v1, v3}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v7

    invoke-direct {p2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 390
    .restart local p2    # "in":Ljava/io/InputStream;
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 391
    new-instance v7, Ljava/io/IOException;

    .line 392
    const-string/jumbo v8, "Indefinite length encoding not supported"

    .line 391
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 393
    :cond_0
    invoke-static {p2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    .line 396
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "indefData":[B
    .end local v5    # "offset":I
    .end local v6    # "readLen":I
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v7

    iget v8, p0, Lsun/security/util/DerValue;->length:I

    if-eq v7, v8, :cond_2

    .line 397
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "extra data given to DerValue constructor"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 399
    :cond_2
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    invoke-static {p2, v7, v9}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B

    move-result-object v0

    .line 401
    .local v0, "bytes":[B
    new-instance v7, Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v7, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 402
    new-instance v7, Lsun/security/util/DerInputStream;

    iget-object v8, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v8}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v7
.end method

.method public static isPrintableStringChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v1, 0x1

    .line 897
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 899
    :cond_0
    return v1

    .line 897
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-le p0, v0, :cond_0

    .line 898
    :cond_2
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-le p0, v0, :cond_0

    .line 901
    :cond_3
    sparse-switch p0, :sswitch_data_0

    .line 916
    const/4 v0, 0x0

    return v0

    .line 914
    :sswitch_0
    return v1

    .line 901
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 411
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 413
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    if-lez v1, :cond_1

    .line 414
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v1, [B

    .line 416
    .local v0, "value":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2

    .line 417
    :try_start_0
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->reset()V

    .line 418
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v1

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    if-eq v1, v3, :cond_0

    .line 419
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "short DER value read (encode)"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 421
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 409
    .end local v0    # "value":[B
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 768
    instance-of v0, p1, Lsun/security/util/DerValue;

    if-eqz v0, :cond_0

    .line 769
    check-cast p1, Lsun/security/util/DerValue;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    return v0

    .line 771
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lsun/security/util/DerValue;)Z
    .locals 3
    .param p1, "other"    # Lsun/security/util/DerValue;

    .prologue
    const/4 v2, 0x1

    .line 782
    if-ne p0, p1, :cond_0

    .line 783
    return v2

    .line 785
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v0, v1, :cond_1

    .line 786
    const/4 v0, 0x0

    return v0

    .line 788
    :cond_1
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-ne v0, v1, :cond_2

    .line 789
    return v2

    .line 793
    :cond_2
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 794
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 793
    if-le v0, v1, :cond_3

    .line 795
    invoke-static {p0, p1}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result v0

    .line 793
    :goto_0
    return v0

    .line 796
    :cond_3
    invoke-static {p1, p0}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 587
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getUTF8String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 588
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 589
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getPrintableString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 590
    :cond_1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 591
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getT61String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 592
    :cond_2
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 593
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 598
    :cond_3
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4

    .line 599
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :cond_4
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_5

    .line 601
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getGeneralString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 603
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBMPString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    .line 700
    new-instance v0, Ljava/io/IOException;

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBMPString, not BMP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "UnicodeBigUnmarked"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 524
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBitString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 561
    new-instance v0, Ljava/io/IOException;

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0
.end method

.method public getBitString(Z)[B
    .locals 3
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    if-nez p1, :cond_0

    .line 615
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 616
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 617
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 440
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    if-eq v0, v1, :cond_0

    .line 441
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBoolean, not a BOOLEAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    if-eq v0, v1, :cond_1

    .line 444
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBoolean, invalid length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 445
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    return v1

    .line 450
    :cond_2
    return v2
.end method

.method public final getData()Lsun/security/util/DerInputStream;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v1, [B

    .line 645
    .local v0, "retVal":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2

    .line 646
    :try_start_0
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    .line 647
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1, v0}, Lsun/security/util/DerInputStream;->getBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 649
    return-object v0

    .line 645
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getEnumerated()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 548
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getEnumerated, incorrect tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 549
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getGeneralString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 730
    new-instance v0, Ljava/io/IOException;

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getGeneralString, not GeneralString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 755
    new-instance v0, Ljava/io/IOException;

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getGeneralizedTime, not a GeneralizedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getGeneralizedTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getIA5String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 686
    new-instance v0, Ljava/io/IOException;

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getIA5String, not IA5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getInteger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 512
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 460
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getOID, not an OID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0
.end method

.method public getOctetString()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 483
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v3}, Lsun/security/util/DerValue;->isConstructed(B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    :cond_0
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v2, [B

    .line 490
    .local v0, "bytes":[B
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    if-nez v2, :cond_2

    .line 491
    return-object v0

    .line 484
    .end local v0    # "bytes":[B
    :cond_1
    new-instance v2, Ljava/io/IOException;

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DerValue.getOctetString, not an Octet String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    .restart local v0    # "bytes":[B
    :cond_2
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    if-eq v2, v3, :cond_3

    .line 494
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "short read on DerValue buffer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_3
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 496
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 497
    .local v1, "in":Lsun/security/util/DerInputStream;
    const/4 v0, 0x0

    .line 498
    .end local v0    # "bytes":[B
    :goto_0
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_4

    .line 499
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lsun/security/util/DerValue;->append([B[B)[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_0

    .line 502
    .end local v0    # "bytes":[B
    .end local v1    # "in":Lsun/security/util/DerInputStream;
    :cond_4
    return-object v0
.end method

.method public getOriginalEncodedForm()[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 842
    iget-object v1, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    if-eqz v1, :cond_0

    .line 843
    iget-object v0, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 842
    :cond_0
    return-object v0
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 537
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 660
    new-instance v0, Ljava/io/IOException;

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getPrintableString, not a string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getT61String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 673
    new-instance v0, Ljava/io/IOException;

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getT61String, not T61 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final getTag()B
    .locals 1

    .prologue
    .line 431
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    return v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 743
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getUTCTime, not a UtcTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getUTCTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUTF8String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 716
    new-instance v0, Ljava/io/IOException;

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getUTF8String, not UTF-8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 574
    new-instance v0, Ljava/io/IOException;

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public getUnalignedBitString(Z)Lsun/security/util/BitArray;
    .locals 3
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 633
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 634
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    .line 633
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isApplication()Z
    .locals 2

    .prologue
    .line 178
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 2

    .prologue
    .line 199
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed(B)Z
    .locals 2
    .param p1, "constructedTag"    # B

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    return v0

    .line 208
    :cond_0
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isContextSpecific()Z
    .locals 2

    .prologue
    .line 184
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContextSpecific(B)Z
    .locals 2
    .param p1, "cntxtTag"    # B

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    return v0

    .line 193
    :cond_0
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isPrivate()Z
    .locals 2

    .prologue
    .line 196
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUniversal()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v1, v1, 0xc0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    return v0
.end method

.method public resetTag(B)V
    .locals 0
    .param p1, "tag"    # B

    .prologue
    .line 945
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 944
    return-void
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 855
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 856
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    .line 857
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toDerInputStream()Lsun/security/util/DerInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    .line 868
    :cond_0
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0

    .line 869
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toDerInputStream rejects tag type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 820
    :try_start_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 823
    :cond_0
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 824
    const-string/jumbo v2, "[DerValue, null]"

    return-object v2

    .line 825
    :cond_1
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 830
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DerValue, tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    const-string/jumbo v3, ", length = "

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    iget v3, p0, Lsun/security/util/DerValue;->length:I

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    const-string/jumbo v3, "]"

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 832
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "misformatted DER value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
