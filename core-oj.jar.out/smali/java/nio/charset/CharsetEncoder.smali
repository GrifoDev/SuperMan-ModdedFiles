.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CODING:I = 0x1

.field private static final ST_END:I = 0x2

.field private static final ST_FLUSHED:I = 0x3

.field private static final ST_RESET:I

.field private static stateNames:[Ljava/lang/String;


# instance fields
.field private final averageBytesPerChar:F

.field private cachedDecoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final maxBytesPerChar:F

.field private replacement:[B

.field private state:I

.field private unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

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
    sput-object v0, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    .line 137
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F

    .prologue
    .line 246
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x3f

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 244
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 242
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .locals 6
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B

    .prologue
    .line 189
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    .line 186
    return-void
.end method

.method constructor <init>(Ljava/nio/charset/Charset;FF[BZ)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "averageBytesPerChar"    # F
    .param p3, "maxBytesPerChar"    # F
    .param p4, "replacement"    # [B
    .param p5, "trusted"    # Z

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 144
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 147
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 146
    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 199
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    .line 200
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive averageBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "averageBytesPerChar exceeds maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    iput-object p4, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    .line 213
    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    .line 214
    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    .line 216
    if-nez p5, :cond_3

    .line 218
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    .line 196
    :cond_3
    return-void
.end method

.method private canEncode(Ljava/nio/CharBuffer;)Z
    .locals 8
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 902
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_0

    .line 903
    return v7

    .line 906
    :cond_0
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 907
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 910
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    .line 911
    .local v1, "ma":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    .line 913
    .local v2, "ua":Ljava/nio/charset/CodingErrorAction;
    :try_start_0
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 914
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 917
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 918
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 922
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 923
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 924
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 918
    return v4

    .line 908
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "ma":Ljava/nio/charset/CodingErrorAction;
    .end local v2    # "ua":Ljava/nio/charset/CodingErrorAction;
    :cond_2
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eqz v4, :cond_1

    .line 909
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v4, v7}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    goto :goto_0

    .line 919
    .restart local v1    # "ma":Ljava/nio/charset/CodingErrorAction;
    .restart local v2    # "ua":Ljava/nio/charset/CodingErrorAction;
    :catch_0
    move-exception v3

    .line 922
    .local v3, "x":Ljava/nio/charset/CharacterCodingException;
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 923
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 924
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 926
    return v6

    .line 921
    .end local v3    # "x":Ljava/nio/charset/CharacterCodingException;
    :catchall_0
    move-exception v4

    .line 922
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 923
    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 924
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 921
    throw v4
.end method

.method private throwIllegalStateException(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 994
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 995
    const-string/jumbo v2, ", new state = "

    .line 994
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 995
    sget-object v2, Ljava/nio/charset/CharsetEncoder;->stateNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    .line 994
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final averageBytesPerChar()F
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar:F

    return v0
.end method

.method public canEncode(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 953
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 954
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 955
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 956
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 983
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_0

    .line 984
    check-cast p1, Ljava/nio/CharBuffer;

    .end local p1    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 987
    .local v0, "cb":Ljava/nio/CharBuffer;
    :goto_0
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1

    .line 986
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .restart local p1    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .restart local v0    # "cb":Ljava/nio/CharBuffer;
    goto :goto_0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 795
    .local v1, "n":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 797
    .local v3, "out":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_0

    .line 798
    return-object v3

    .line 799
    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 801
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 803
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 804
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 806
    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 818
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 819
    return-object v3

    .line 802
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    .line 808
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 809
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v1, v4, 0x1

    .line 810
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 811
    .local v2, "o":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 812
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 813
    move-object v3, v2

    .line 814
    goto :goto_0

    .line 816
    .end local v2    # "o":Ljava/nio/ByteBuffer;
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .locals 7
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;
    .param p3, "endOfInput"    # Z

    .prologue
    .line 569
    if-eqz p3, :cond_2

    const/4 v2, 0x2

    .line 570
    .local v2, "newState":I
    :goto_0
    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 571
    if-eqz p3, :cond_3

    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 573
    :cond_0
    :goto_1
    iput v2, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 579
    :cond_1
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 586
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 587
    return-object v1

    .line 569
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    .end local v2    # "newState":I
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "newState":I
    goto :goto_0

    .line 572
    :cond_3
    iget v5, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v5, v2}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    goto :goto_1

    .line 582
    :catch_0
    move-exception v3

    .line 583
    .local v3, "x":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v3}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 580
    .end local v3    # "x":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v4

    .line 581
    .local v4, "x":Ljava/nio/BufferUnderflowException;
    new-instance v5, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v5, v4}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 589
    .end local v4    # "x":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 590
    if-eqz p3, :cond_7

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 591
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 598
    :cond_5
    const/4 v0, 0x0

    .line 599
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 600
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 606
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_6
    :goto_3
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_a

    .line 607
    return-object v1

    .line 594
    :cond_7
    return-object v1

    .line 601
    .restart local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_8
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 602
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    goto :goto_3

    .line 604
    .local v0, "action":Ljava/nio/charset/CodingErrorAction;
    :cond_9
    sget-boolean v5, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 609
    .end local v0    # "action":Ljava/nio/charset/CodingErrorAction;
    :cond_a
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_c

    .line 610
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    array-length v6, v6

    if-ge v5, v6, :cond_b

    .line 611
    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v5

    .line 612
    :cond_b
    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 615
    :cond_c
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v5, :cond_d

    .line 616
    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v5, :cond_e

    .line 618
    :cond_d
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 622
    :cond_e
    sget-boolean v5, Ljava/nio/charset/CharsetEncoder;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x3

    .line 667
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 668
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 669
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    iput v3, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 671
    :cond_0
    return-object v0

    .line 674
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_1
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    if-eq v1, v3, :cond_2

    .line 675
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    invoke-direct {p0, v1, v3}, Ljava/nio/charset/CharsetEncoder;->throwIllegalStateException(II)V

    .line 677
    :cond_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 695
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 399
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 442
    return-void
.end method

.method protected implReplaceWith([B)V
    .locals 0
    .param p1, "newReplacement"    # [B

    .prologue
    .line 319
    return-void
.end method

.method protected implReset()V
    .locals 0

    .prologue
    .line 720
    return-void
.end method

.method public isLegalReplacement([B)Z
    .locals 8
    .param p1, "repl"    # [B

    .prologue
    const/4 v5, 0x1

    .line 343
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 344
    .local v4, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/nio/charset/CharsetDecoder;>;"
    const/4 v3, 0x0

    .line 345
    .local v3, "dec":Ljava/nio/charset/CharsetDecoder;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    check-cast v3, Ljava/nio/charset/CharsetDecoder;

    .local v3, "dec":Ljava/nio/charset/CharsetDecoder;
    if-nez v3, :cond_2

    .line 346
    .end local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 347
    .restart local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 348
    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 349
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Ljava/nio/charset/CharsetEncoder;->cachedDecoder:Ljava/lang/ref/WeakReference;

    .line 353
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 354
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-float v6, v6

    .line 355
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v7

    .line 354
    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 356
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v3, v0, v1, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 357
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :cond_1
    return v5

    .line 351
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "cb":Ljava/nio/CharBuffer;
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    goto :goto_0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxBytesPerChar()F
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    .line 388
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 389
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p1, "newAction"    # Ljava/nio/charset/CodingErrorAction;

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    .line 431
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 432
    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .locals 3
    .param p1, "newReplacement"    # [B

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_0
    array-length v0, p1

    .line 297
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_1
    int-to-float v1, v0

    iget v2, p0, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Replacement too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_3
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    .line 306
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    .line 307
    return-object p0
.end method

.method public final replacement()[B
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replacement:[B

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->state:I

    .line 711
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
