.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# static fields
.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1


# instance fields
.field private bidiBase:Landroid/icu/text/Bidi;


# direct methods
.method private constructor <init>(Landroid/icu/text/Bidi;)V
    .locals 0
    .param p1, "bidiBase"    # Landroid/icu/text/Bidi;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 111
    if-nez p1, :cond_0

    move-object v1, v3

    .line 112
    :goto_0
    if-nez p1, :cond_1

    move v5, v2

    :goto_1
    move-object v0, p0

    move v4, v2

    move v6, p2

    .line 111
    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 110
    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 2
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "paragraph is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    new-instance v0, Landroid/icu/text/Bidi;

    invoke-direct {v0, p1}, Landroid/icu/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 140
    return-void
.end method

.method public constructor <init>([CI[BIII)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    if-gez p5, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p5, v0, :cond_3

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string/jumbo v2, " length: "

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    const-string/jumbo v2, " for text of length: "

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    array-length v2, p1

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_3
    if-eqz p3, :cond_5

    if-ltz p4, :cond_4

    array-length v0, p3

    sub-int/2addr v0, p4

    if-le p5, v0, :cond_5

    .line 178
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string/jumbo v2, " length: "

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    const-string/jumbo v2, " for embeddings of length: "

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    array-length v2, p1

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_5
    new-instance v0, Landroid/icu/text/Bidi;

    .line 184
    invoke-static {p6}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 183
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 165
    return-void
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .locals 3
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    .prologue
    .line 370
    if-ltz p1, :cond_0

    array-length v0, p0

    if-gt v0, p1, :cond_1

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value levelStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    const-string/jumbo v2, " is out of range 0 to "

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    if-ltz p3, :cond_2

    array-length v0, p2

    if-gt v0, p3, :cond_3

    .line 376
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value objectStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    const-string/jumbo v2, " is out of range 0 to "

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_3
    if-ltz p4, :cond_4

    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_5

    .line 381
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    const-string/jumbo v2, " is out of range 0 to "

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    array-length v2, p2

    sub-int/2addr v2, p3

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 369
    return-void
.end method

.method public static requiresBidi([CII)Z
    .locals 3
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 346
    if-ltz p1, :cond_0

    if-le p1, p2, :cond_1

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    const-string/jumbo v2, " is out of range 0 to "

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    array-length v0, p0

    if-gt p2, v0, :cond_0

    .line 350
    invoke-static {p0, p1, p2}, Landroid/icu/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    return v0
.end method

.method private static translateConstToIcu(I)I
    .locals 1
    .param p0, "javaInt"    # I

    .prologue
    const/4 v0, 0x0

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 96
    return v0

    .line 87
    :pswitch_0
    const/16 v0, 0x7e

    return v0

    .line 89
    :pswitch_1
    const/16 v0, 0x7f

    return v0

    .line 91
    :pswitch_2
    return v0

    .line 93
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 85
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public baseIsLeftToRight()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->baseIsLeftToRight()Z

    move-result v0

    return v0
.end method

.method public createLineBidi(II)Ljava/text/Bidi;
    .locals 8
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    .prologue
    const/4 v2, 0x0

    .line 199
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid ranges (start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string/jumbo v2, "limit="

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string/jumbo v2, ", length="

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v2

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string/jumbo v2, ")"

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 209
    if-ne p1, p2, :cond_2

    .line 210
    new-instance v7, Ljava/text/Bidi;

    new-instance v0, Landroid/icu/text/Bidi;

    new-array v1, v2, [C

    new-array v3, v2, [B

    .line 211
    invoke-static {v2}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v6

    move v4, v2

    move v5, v2

    .line 210
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    invoke-direct {v7, v0}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    return-object v7

    .line 214
    :cond_2
    new-instance v0, Ljava/text/Bidi;

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    return-object v0
.end method

.method public getBaseLevel()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    move-result v0

    return v0
.end method

.method public getLevelAt(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1}, Landroid/icu/text/Bidi;->getLevelAt(I)B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v1

    return v1
.end method

.method public getRunCount()I
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    .line 286
    .local v0, "runCount":I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .end local v0    # "runCount":I
    :cond_0
    return v0
.end method

.method public getRunLevel(I)I
    .locals 1
    .param p1, "run"    # I

    .prologue
    .line 297
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 298
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRunLimit(I)I
    .locals 1
    .param p1, "run"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 329
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRunStart(I)I
    .locals 2
    .param p1, "run"    # I

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 313
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 315
    :cond_0
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v0

    goto :goto_0
.end method

.method public isLeftToRight()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    move-result v0

    return v0
.end method

.method public isMixed()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isMixed()Z

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/text/Bidi;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    const-string/jumbo v1, "[direction: "

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v1

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    const-string/jumbo v1, " baseLevel: "

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v1

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v1, " length: "

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getLength()I

    move-result v1

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v1, " runs: "

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v1

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v1, "]"

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
