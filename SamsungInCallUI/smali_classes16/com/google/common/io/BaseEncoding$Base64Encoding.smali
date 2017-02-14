.class final Lcom/google/common/io/BaseEncoding$Base64Encoding;
.super Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Base64Encoding"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V
    .locals 2
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    # getter for: Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C
    invoke-static {p1}, Lcom/google/common/io/BaseEncoding$Alphabet;->access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method decodeTo([BLjava/lang/CharSequence;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$Base64Encoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid input length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    shl-int/lit8 v2, v5, 0x12

    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v2, v5

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v2, v5

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method encodeTo(Ljava/lang/Appendable;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v4, p3, p4

    array-length v5, p2

    invoke-static {p3, v4, v5}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v1, p3

    move v3, p4

    move v2, v1

    :goto_0
    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v5, v0, 0x12

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    and-int/lit8 v5, v0, 0x3f

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v3, v3, -0x3

    move v2, v1

    goto :goto_0

    :cond_0
    add-int v4, p3, p4

    if-ge v2, v4, :cond_1

    add-int v4, p3, p4

    sub-int/2addr v4, v2

    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/google/common/io/BaseEncoding$Base64Encoding;->encodeChunkTo(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method

.method newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 1
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/common/io/BaseEncoding$Base64Encoding;

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-object v0
.end method
