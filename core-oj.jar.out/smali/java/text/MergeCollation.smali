.class final Ljava/text/MergeCollation;
.super Ljava/lang/Object;
.source "MergeCollation.java"


# instance fields
.field private final BITARRAYMASK:B

.field private final BYTEMASK:I

.field private final BYTEPOWER:I

.field private transient excess:Ljava/lang/StringBuffer;

.field private transient lastEntry:Ljava/text/PatternEntry;

.field patterns:Ljava/util/ArrayList;

.field private transient saveEntry:Ljava/text/PatternEntry;

.field private transient statusArray:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    .line 209
    iput-object v2, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    .line 210
    iput-object v2, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    .line 214
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    .line 224
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    .line 225
    const/4 v1, 0x1

    iput-byte v1, p0, Ljava/text/MergeCollation;->BITARRAYMASK:B

    .line 226
    const/4 v1, 0x3

    iput v1, p0, Ljava/text/MergeCollation;->BYTEPOWER:I

    .line 227
    const/4 v1, 0x7

    iput v1, p0, Ljava/text/MergeCollation;->BYTEMASK:I

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Ljava/text/MergeCollation;->setPattern(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private final findLastEntry(Ljava/text/PatternEntry;Ljava/lang/StringBuffer;)I
    .locals 9
    .param p1, "entry"    # Ljava/text/PatternEntry;
    .param p2, "excessChars"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 305
    if-nez p1, :cond_0

    .line 306
    return v7

    .line 308
    :cond_0
    iget v4, p1, Ljava/text/PatternEntry;->strength:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_4

    .line 312
    const/4 v3, -0x1

    .line 313
    .local v3, "oldIndex":I
    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 314
    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shr-int/lit8 v2, v4, 0x3

    .line 315
    .local v2, "index":I
    iget-object v4, p0, Ljava/text/MergeCollation;->statusArray:[B

    aget-byte v4, v4, v2

    .line 316
    iget-object v5, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit8 v5, v5, 0x7

    shl-int v5, v6, v5

    .line 315
    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 317
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    .line 322
    .end local v2    # "index":I
    :cond_1
    :goto_0
    if-ne v3, v8, :cond_3

    .line 323
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "couldn\'t find last entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 320
    :cond_2
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 325
    :cond_3
    add-int/lit8 v4, v3, 0x1

    return v4

    .line 328
    .end local v3    # "oldIndex":I
    :cond_4
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 329
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    .line 330
    .local v0, "e":Ljava/text/PatternEntry;
    iget-object v4, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v5, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    .line 331
    iget-object v6, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 330
    invoke-virtual {v4, v7, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 332
    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v5, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 333
    iget-object v6, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 332
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    .end local v0    # "e":Ljava/text/PatternEntry;
    :cond_5
    if-ne v1, v8, :cond_7

    .line 338
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "couldn\'t find: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 328
    .restart local v0    # "e":Ljava/text/PatternEntry;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 339
    .end local v0    # "e":Ljava/text/PatternEntry;
    :cond_7
    add-int/lit8 v4, v1, 0x1

    return v4
.end method

.method private final findLastWithNoExtension(I)Ljava/text/PatternEntry;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 123
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 124
    iget-object v1, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    .line 125
    .local v0, "entry":Ljava/text/PatternEntry;
    iget-object v1, v0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 126
    return-object v0

    .line 123
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 129
    .end local v0    # "entry":Ljava/text/PatternEntry;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private final fixEntry(Ljava/text/PatternEntry;)V
    .locals 13
    .param p1, "newEntry"    # Ljava/text/PatternEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 242
    iget-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    if-eqz v7, :cond_1

    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v8, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v8, v8, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    iget-object v7, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    iget-object v8, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v8, v8, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 242
    if-eqz v7, :cond_1

    .line 244
    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 245
    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    if-eq v7, v10, :cond_0

    .line 246
    new-instance v7, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The entries "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 247
    const-string/jumbo v9, " are adjacent in the rules, but have conflicting "

    .line 246
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 248
    const-string/jumbo v9, "strengths: A character can\'t be unequal to itself."

    .line 246
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 251
    :cond_0
    return-void

    .line 255
    :cond_1
    const/4 v2, 0x1

    .line 256
    .local v2, "changeLastEntry":Z
    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    if-eq v7, v10, :cond_4

    .line 257
    const/4 v4, -0x1

    .line 259
    .local v4, "oldIndex":I
    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v12, :cond_7

    .line 261
    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 262
    .local v1, "c":C
    shr-int/lit8 v6, v1, 0x3

    .line 263
    .local v6, "statusIndex":I
    iget-object v7, p0, Ljava/text/MergeCollation;->statusArray:[B

    aget-byte v0, v7, v6

    .line 264
    .local v0, "bitClump":B
    and-int/lit8 v7, v1, 0x7

    shl-int v7, v12, v7

    int-to-byte v5, v7

    .line 266
    .local v5, "setBit":B
    if-eqz v0, :cond_6

    and-int v7, v0, v5

    if-eqz v7, :cond_6

    .line 267
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    .line 276
    .end local v0    # "bitClump":B
    .end local v1    # "c":C
    .end local v5    # "setBit":B
    .end local v6    # "statusIndex":I
    :goto_0
    if-eq v4, v11, :cond_2

    .line 277
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 280
    :cond_2
    iget-object v7, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 281
    iget-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v8, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-direct {p0, v7, v8}, Ljava/text/MergeCollation;->findLastEntry(Ljava/text/PatternEntry;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 283
    .local v3, "lastIndex":I
    iget-object v7, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    .line 285
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v3, v7, :cond_3

    .line 286
    iget-object v7, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    iput-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    .line 287
    const/4 v2, 0x0

    .line 290
    :cond_3
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v3, v7, :cond_8

    .line 291
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iput-object p1, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    .line 297
    .end local v3    # "lastIndex":I
    .end local v4    # "oldIndex":I
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 298
    iput-object p1, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    .line 235
    :cond_5
    return-void

    .line 271
    .restart local v0    # "bitClump":B
    .restart local v1    # "c":C
    .restart local v4    # "oldIndex":I
    .restart local v5    # "setBit":B
    .restart local v6    # "statusIndex":I
    :cond_6
    iget-object v7, p0, Ljava/text/MergeCollation;->statusArray:[B

    or-int v8, v0, v5

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    goto :goto_0

    .line 274
    .end local v0    # "bitClump":B
    .end local v1    # "c":C
    .end local v5    # "setBit":B
    .end local v6    # "statusIndex":I
    :cond_7
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0

    .line 294
    .restart local v3    # "lastIndex":I
    :cond_8
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    new-instance v1, Ljava/text/PatternEntry$Parser;

    invoke-direct {v1, p1}, Ljava/text/PatternEntry$Parser;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "parser":Ljava/text/PatternEntry$Parser;
    invoke-virtual {v1}, Ljava/text/PatternEntry$Parser;->next()Ljava/text/PatternEntry;

    move-result-object v0

    .line 181
    .local v0, "entry":Ljava/text/PatternEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, v0}, Ljava/text/MergeCollation;->fixEntry(Ljava/text/PatternEntry;)V

    .line 183
    invoke-virtual {v1}, Ljava/text/PatternEntry$Parser;->next()Ljava/text/PatternEntry;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method public emitPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/text/MergeCollation;->emitPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public emitPattern(Z)Ljava/lang/String;
    .locals 5
    .param p1, "withWhiteSpace"    # Z

    .prologue
    const/4 v4, 0x0

    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 152
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    .line 153
    .local v0, "entry":Ljava/text/PatternEntry;
    if-eqz v0, :cond_0

    .line 154
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "entry":Ljava/text/PatternEntry;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemAt(I)Ljava/text/PatternEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 201
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/text/MergeCollation;->getPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPattern(Z)Ljava/lang/String;
    .locals 10
    .param p1, "withWhiteSpace"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 89
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v5, "result":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 91
    .local v6, "tmp":Ljava/text/PatternEntry;
    const/4 v1, 0x0

    .line 93
    .local v1, "extList":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .end local v1    # "extList":Ljava/util/ArrayList;
    .end local v6    # "tmp":Ljava/text/PatternEntry;
    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 94
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    .line 95
    .local v0, "entry":Ljava/text/PatternEntry;
    iget-object v7, v0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    if-nez v1, :cond_0

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    if-eqz v1, :cond_3

    .line 101
    add-int/lit8 v7, v2, -0x1

    invoke-direct {p0, v7}, Ljava/text/MergeCollation;->findLastWithNoExtension(I)Ljava/text/PatternEntry;

    move-result-object v4

    .line 102
    .local v4, "last":Ljava/text/PatternEntry;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "j":I
    :goto_2
    if-ltz v3, :cond_2

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/PatternEntry;

    .line 104
    .local v6, "tmp":Ljava/text/PatternEntry;
    invoke-virtual {v6, v5, v8, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 102
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 106
    .end local v6    # "tmp":Ljava/text/PatternEntry;
    :cond_2
    const/4 v1, 0x0

    .line 108
    .end local v3    # "j":I
    .end local v4    # "last":Ljava/text/PatternEntry;
    :cond_3
    invoke-virtual {v0, v5, v8, p1, v9}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    goto :goto_1

    .line 111
    .end local v0    # "entry":Ljava/text/PatternEntry;
    :cond_4
    if-eqz v1, :cond_6

    .line 112
    add-int/lit8 v7, v2, -0x1

    invoke-direct {p0, v7}, Ljava/text/MergeCollation;->findLastWithNoExtension(I)Ljava/text/PatternEntry;

    move-result-object v4

    .line 113
    .restart local v4    # "last":Ljava/text/PatternEntry;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .restart local v3    # "j":I
    :goto_3
    if-ltz v3, :cond_5

    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/PatternEntry;

    .line 115
    .restart local v6    # "tmp":Ljava/text/PatternEntry;
    invoke-virtual {v6, v5, v8, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 113
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 117
    .end local v6    # "tmp":Ljava/text/PatternEntry;
    :cond_5
    const/4 v1, 0x0

    .line 119
    .end local v3    # "j":I
    .end local v4    # "last":Ljava/text/PatternEntry;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    invoke-virtual {p0, p1}, Ljava/text/MergeCollation;->addPattern(Ljava/lang/String;)V

    .line 163
    return-void
.end method
