.class public final Ljava/lang/StringBuffer;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuffer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x2f0707d9eac8ead3L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 576
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 577
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "value"

    const-class v3, [C

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 578
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "count"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 579
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "shared"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 575
    sput-object v0, Ljava/lang/StringBuffer;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 95
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 602
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Ljava/lang/StringBuffer;->value:[C

    .line 603
    const-string/jumbo v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/lang/StringBuffer;->count:I

    .line 600
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 588
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 589
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "value"

    iget-object v2, p0, Ljava/lang/StringBuffer;->value:[C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    const-string/jumbo v1, "count"

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 591
    const-string/jumbo v1, "shared"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 592
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 587
    return-void

    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(D)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 359
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(F)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(I)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(J)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "lng"    # J

    .prologue
    .line 349
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 307
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Z)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append([C)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "str"    # [C

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append([CII)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 321
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(C)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "c"    # C

    .prologue
    monitor-enter p0

    .line 332
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 333
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(D)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "d"    # D

    .prologue
    monitor-enter p0

    .line 360
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(D)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 361
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(F)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "f"    # F

    .prologue
    monitor-enter p0

    .line 355
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(F)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 356
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(I)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "i"    # I

    .prologue
    monitor-enter p0

    .line 337
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(I)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 338
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(J)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "lng"    # J

    .prologue
    monitor-enter p0

    .line 350
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(J)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 351
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    const-string/jumbo p1, "null"

    .line 296
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 297
    check-cast p1, Ljava/lang/String;

    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 298
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 299
    check-cast p1, Ljava/lang/StringBuffer;

    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 300
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 310
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 232
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 233
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 237
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 238
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    monitor-enter p0

    .line 266
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 267
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Z)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    monitor-enter p0

    .line 327
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Z)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 328
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append([C)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "str"    # [C

    .prologue
    monitor-enter p0

    .line 314
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 315
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append([CII)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    monitor-enter p0

    .line 322
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 323
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "codePoint"    # I

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized appendCodePoint(I)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "codePoint"    # I

    .prologue
    monitor-enter p0

    .line 345
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 346
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized capacity()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 178
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    if-lt p1, v0, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    aget-char v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized codePointAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 187
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointBefore(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 194
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointCount(II)I
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    monitor-enter p0

    .line 201
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic delete(II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 368
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete(II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    monitor-enter p0

    .line 369
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->delete(II)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 370
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized deleteCharAt(I)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 378
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 379
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 1
    .param p1, "minimumCapacity"    # I

    .prologue
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->expandCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 152
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChars(II[CI)V
    .locals 1
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .prologue
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 216
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    monitor-enter p0

    .line 530
    :try_start_0
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 530
    const/4 v1, 0x0

    .line 531
    const/4 v4, 0x0

    move v6, p2

    .line 530
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->indexOf([CII[CIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic insert(IC)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .prologue
    .line 484
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ID)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(ID)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IF)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .prologue
    .line 506
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IF)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .prologue
    .line 492
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IJ)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 499
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(IJ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 454
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IZ)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .prologue
    .line 477
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(I[C)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 419
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insert(IC)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .prologue
    monitor-enter p0

    .line 485
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IC)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 486
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ID)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .prologue
    .line 514
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .prologue
    .line 507
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .prologue
    .line 493
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 500
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 456
    if-nez p2, :cond_0

    .line 457
    const-string/jumbo p2, "null"

    .line 458
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 459
    check-cast p2, Ljava/lang/String;

    .end local p2    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 460
    .restart local p2    # "s":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    monitor-enter p0

    .line 470
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 471
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 430
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 431
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 438
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 439
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(IZ)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .prologue
    .line 478
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insert(I[C)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .prologue
    monitor-enter p0

    .line 446
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(I[C)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 447
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(I[CII)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    monitor-enter p0

    .line 422
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(I[CII)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 423
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 540
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    .line 549
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 548
    const/4 v1, 0x0

    .line 549
    const/4 v4, 0x0

    move v6, p2

    .line 548
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->lastIndexOf([CII[CIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized length()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 144
    :try_start_0
    iget v0, p0, Ljava/lang/StringBuffer;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offsetByCodePoints(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    monitor-enter p0

    .line 208
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 387
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 388
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic reverse()Ljava/lang/AbstractStringBuilder;
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reverse()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    monitor-enter p0

    .line 556
    :try_start_0
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->reverse()Ljava/lang/AbstractStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 557
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCharAt(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    monitor-enter p0

    .line 226
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    if-lt p1, v0, :cond_1

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    aput-char p2, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 225
    return-void
.end method

.method public declared-synchronized setLength(I)V
    .locals 1
    .param p1, "newLength"    # I

    .prologue
    monitor-enter p0

    .line 170
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 169
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .prologue
    monitor-enter p0

    .line 396
    :try_start_0
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    monitor-enter p0

    .line 412
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    .line 561
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/StringBuffer;->value:[C

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 162
    :try_start_0
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 161
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
