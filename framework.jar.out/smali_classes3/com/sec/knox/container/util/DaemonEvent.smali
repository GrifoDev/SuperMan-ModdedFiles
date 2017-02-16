.class public Lcom/sec/knox/container/util/DaemonEvent;
.super Ljava/lang/Object;
.source "DaemonEvent.java"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cmdNumber"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "rawEvent"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCmdNumber:I

    .line 41
    iput p2, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    .line 42
    iput-object p3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static filterMessageList([Lcom/sec/knox/container/util/DaemonEvent;I)[Ljava/lang/String;
    .locals 5
    .param p0, "events"    # [Lcom/sec/knox/container/util/DaemonEvent;
    .param p1, "matchCode"    # I

    .prologue
    .line 219
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 220
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 221
    .local v0, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v0}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/sec/knox/container/util/DaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static isClassUnsolicited(I)Z
    .locals 2
    .param p0, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 153
    const/16 v1, 0x258

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2bc

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static parseRawEvent(Ljava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 10
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 174
    const-string/jumbo v8, " "

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "parsed":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 176
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Insufficient arguments"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    :cond_0
    const/4 v6, 0x0

    .line 183
    .local v6, "skiplength":I
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "code":I
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 189
    const/4 v1, -0x1

    .line 190
    .local v1, "cmdNumber":I
    invoke-static {v2}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 191
    array-length v8, v5

    const/4 v9, 0x3

    if-ge v8, v9, :cond_1

    .line 192
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Insufficient arguemnts"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 185
    .end local v1    # "cmdNumber":I
    .end local v2    # "code":I
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "problem parsing code"

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 195
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "cmdNumber":I
    .restart local v2    # "code":I
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 196
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v8

    .line 202
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "message":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 205
    array-length v8, v5

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v0, v5, v7

    .line 206
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 205
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "arg":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 198
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "problem parsing cmdNumber"

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 211
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "message":Ljava/lang/String;
    :cond_4
    new-instance v7, Lcom/sec/knox/container/util/DaemonEvent;

    invoke-direct {v7, v1, v2, v4, p0}, Lcom/sec/knox/container/util/DaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 15
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x22

    const/16 v13, 0x20

    const/4 v12, -0x1

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "DEBUG_ROUTINE":Z
    const-string/jumbo v1, "unescapeArgs"

    .line 246
    .local v1, "LOGTAG":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v6, "parsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 248
    .local v3, "length":I
    const/4 v2, 0x0

    .line 249
    .local v2, "current":I
    const/4 v9, -0x1

    .line 250
    .local v9, "wordEnd":I
    const/4 v7, 0x0

    .line 254
    .local v7, "quoted":Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v14, :cond_0

    .line 255
    const/4 v7, 0x1

    .line 256
    const/4 v2, 0x1

    .line 258
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_7

    .line 260
    if-eqz v7, :cond_4

    .line 261
    move v9, v2

    .line 262
    :goto_1
    invoke-virtual {p0, v14, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 263
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-eq v10, v11, :cond_3

    .line 274
    :cond_1
    :goto_2
    if-ne v9, v12, :cond_2

    .line 275
    move v9, v3

    .line 276
    :cond_2
    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "word":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v2, v10

    .line 278
    if-nez v7, :cond_5

    .line 279
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 284
    :goto_3
    const-string/jumbo v10, "\\\\"

    const-string/jumbo v11, "\\"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 285
    const-string/jumbo v10, "\\\""

    const-string/jumbo v11, "\""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 289
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 293
    .local v5, "nextSpace":I
    const-string/jumbo v10, " \""

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 297
    .local v4, "nextQuote":I
    if-le v4, v12, :cond_6

    if-gt v4, v5, :cond_6

    .line 298
    const/4 v7, 0x1

    .line 299
    add-int/lit8 v2, v4, 0x2

    .line 297
    goto :goto_0

    .line 266
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "word":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 270
    :cond_4
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    goto :goto_2

    .line 281
    .restart local v8    # "word":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 301
    .restart local v4    # "nextQuote":I
    .restart local v5    # "nextSpace":I
    :cond_6
    const/4 v7, 0x0

    .line 302
    if-le v5, v12, :cond_0

    .line 303
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 312
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "word":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method


# virtual methods
.method public checkCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 162
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    if-eq v0, p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sec/knox/container/util/DaemonEvent;->clearMessage()V

    .line 61
    invoke-virtual {p0}, Lcom/sec/knox/container/util/DaemonEvent;->clearRawEvent()V

    .line 62
    invoke-virtual {p0}, Lcom/sec/knox/container/util/DaemonEvent;->clearParsed()V

    .line 59
    return-void
.end method

.method public clearMessage()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 65
    :cond_0
    return-void
.end method

.method public clearParsed()V
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 79
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 81
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 80
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public clearRawEvent()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 71
    :cond_0
    return-void
.end method

.method public getCmdNumber()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/knox/container/util/DaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    .line 237
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 238
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 239
    return-object v1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getSubErrorCode()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "errorCode":I
    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 92
    return v5

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 94
    .local v1, "i":I
    if-gtz v1, :cond_1

    .line 95
    return v5

    .line 96
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    .line 97
    mul-int/lit8 v0, v0, 0xa

    .line 98
    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 100
    :cond_2
    if-lez v0, :cond_3

    .line 101
    mul-int/lit8 v3, v0, -0x1

    return v3

    .line 102
    :cond_3
    return v5
.end method

.method public isClassClientError()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    iget v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClassContinue()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 121
    iget v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClassOk()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    iget v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClassServerError()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    iget v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClassUnsolicited()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method
