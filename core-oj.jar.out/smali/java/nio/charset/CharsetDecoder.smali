.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CODING:I = 0x1

.field private static final ST_END:I = 0x2

.field private static final ST_FLUSHED:I = 0x3

.field private static final ST_RESET:I

.field private static stateNames:[Ljava/lang/String;


# instance fields
.field private final averageCharsPerByte:F

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxCharsPerByte:F

.field private replacement:Ljava/lang/String;

.field private state:I

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "RESET"

    aput-object v3, v0, v1

    const-string/jumbo v1, "CODING"

    aput-object v1, v0, v2

    const-string/jumbo v1, "CODING_END"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLUSHED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 158
    sput-object v0, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    .line 137
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F

    .prologue
    .line 231
    const-string/jumbo v0, "\ufffd"

    .line 229
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V

    .line 227
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;FFLjava/lang/String;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageCharsPerByte"    # F
    .param p3, "maxCharsPerByte"    # F
    .param p4, "replacement"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 144
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 147
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 146
    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 188
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    .line 189
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive averageCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_1

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "averageCharsPerByte exceeds maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_2
    iput-object p4, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    .line 202
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    .line 203
    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    .line 186
    return-void
.end method

.method private throwIllegalStateException(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 971
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    const-string/jumbo v2, ", new state = "

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    sget-object v2, Ljava/nio/charset/CharsetDecoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final averageCharsPerByte()F
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte:F

    return v0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 6
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 780
    .local v1, "n":I
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 782
    .local v3, "out":Ljava/nio/CharBuffer;
    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_0

    .line 783
    return-object v3

    .line 784
    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 786
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 787
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 788
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 789
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 791
    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 803
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 804
    return-object v3

    .line 787
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    .line 793
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 794
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v1, v4, 0x1

    .line 795
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 796
    .local v2, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 797
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 798
    move-object v3, v2

    .line 799
    goto :goto_0

    .line 801
    .end local v2    # "o":Ljava/nio/CharBuffer;
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0
.end method

.method public final decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 7
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;
    .param p3, "endOfInput"    # Z

    .prologue
    .line 554
    if-eqz p3, :cond_2

    const/4 v2, 0x2

    .line 555
    .local v2, "newState":I
    :goto_0
    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 556
    if-eqz p3, :cond_3

    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 558
    :cond_0
    :goto_1
    iput v2, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 564
    :cond_1
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 571
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 572
    return-object v1

    .line 554
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    .end local v2    # "newState":I
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "newState":I
    goto :goto_0

    .line 557
    :cond_3
    iget v5, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    invoke-direct {p0, v5, v2}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    goto :goto_1

    .line 567
    :catch_0
    move-exception v3

    .line 568
    .local v3, "x":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v3}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 565
    .end local v3    # "x":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v4

    .line 566
    .local v4, "x":Ljava/nio/BufferUnderflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v4}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 574
    .end local v4    # "x":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 575
    if-eqz p3, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 576
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 583
    :cond_5
    const/4 v0, 0x0

    .line 584
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 585
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 591
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_6
    :goto_3
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_a

    .line 592
    return-object v1

    .line 579
    :cond_7
    return-object v1

    .line 586
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_8
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 587
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_3

    .line 589
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :cond_9
    sget-boolean v5, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 594
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_a
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_c

    .line 595
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 596
    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v5

    .line 597
    :cond_b
    iget-object v5, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 600
    :cond_c
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v5, :cond_d

    .line 601
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_e

    .line 603
    :cond_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 607
    :cond_e
    sget-boolean v5, Ljava/nio/charset/CharsetDecoder;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method protected abstract decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public detectedCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 878
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v3, 0x3

    .line 652
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 653
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 654
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    iput v3, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 656
    :cond_0
    return-object v0

    .line 659
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_1
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    if-eq v1, v3, :cond_2

    .line 660
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    invoke-direct {p0, v1, v3}, Ljava/nio/charset/CharsetDecoder;->throwIllegalStateException(II)V

    .line 662
    :cond_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1
.end method

.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    .line 680
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 384
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 427
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "newReplacement"    # Ljava/lang/String;

    .prologue
    .line 304
    return-void
.end method

.method protected implReset()V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method public isAutoDetecting()Z
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public isCharsetDetected()Z
    .locals 1

    .prologue
    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxCharsPerByte()F
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 373
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 374
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 416
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 417
    return-object p0
.end method

.method public final replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .locals 3
    .param p1, "newReplacement"    # Ljava/lang/String;

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 282
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_1
    int-to-float v1, v0

    iget v2, p0, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Replacement too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_2
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    .line 291
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    .line 292
    return-object p0
.end method

.method public final replacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replacement:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->state:I

    .line 696
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
