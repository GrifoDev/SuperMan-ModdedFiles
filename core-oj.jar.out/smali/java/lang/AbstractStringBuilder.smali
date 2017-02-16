.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field count:I

.field value:[C


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 63
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/AbstractStringBuilder;
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 606
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 607
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    .line 608
    return-object p0
.end method

.method public append(D)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 699
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->appendTo(Ljava/lang/AbstractStringBuilder;)V

    .line 702
    return-object p0
.end method

.method public append(F)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 679
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/FloatingDecimal;->loadFloat(F)Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->appendTo(Ljava/lang/AbstractStringBuilder;)V

    .line 682
    return-object p0
.end method

.method public append(I)Ljava/lang/AbstractStringBuilder;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 625
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_0

    .line 626
    const-string/jumbo v2, "-2147483648"

    invoke-virtual {p0, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 627
    return-object p0

    .line 629
    :cond_0
    if-gez p1, :cond_1

    neg-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->stringSize(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 631
    .local v0, "appendedLength":I
    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    .line 632
    .local v1, "spaceNeeded":I
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 633
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, v1, v2}, Ljava/lang/Integer;->getChars(II[C)V

    .line 634
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 635
    return-object p0

    .line 630
    .end local v0    # "appendedLength":I
    .end local v1    # "spaceNeeded":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->stringSize(I)I

    move-result v0

    .restart local v0    # "appendedLength":I
    goto :goto_0
.end method

.method public append(J)Ljava/lang/AbstractStringBuilder;
    .locals 5
    .param p1, "l"    # J

    .prologue
    .line 652
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 653
    const-string/jumbo v2, "-9223372036854775808"

    invoke-virtual {p0, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 654
    return-object p0

    .line 656
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    neg-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->stringSize(J)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 658
    .local v0, "appendedLength":I
    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    .line 659
    .local v1, "spaceNeeded":I
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 660
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Long;->getChars(JI[C)V

    .line 661
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 662
    return-object p0

    .line 657
    .end local v0    # "appendedLength":I
    .end local v1    # "spaceNeeded":I
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->stringSize(J)I

    move-result v0

    .restart local v0    # "appendedLength":I
    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 438
    if-nez p1, :cond_0

    .line 439
    const-string/jumbo p1, "null"

    .line 440
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 441
    check-cast p1, Ljava/lang/String;

    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 442
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 443
    check-cast p1, Ljava/lang/StringBuffer;

    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 444
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    const-string/jumbo p1, "null"

    .line 480
    :cond_0
    if-ltz p2, :cond_1

    if-le p2, p3, :cond_2

    .line 481
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", s.length() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 483
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 482
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 480
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt p3, v4, :cond_1

    .line 484
    sub-int v2, p3, p2

    .line 485
    .local v2, "len":I
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 486
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 487
    check-cast p1, Ljava/lang/String;

    .end local p1    # "s":Ljava/lang/CharSequence;
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, p2, p3, v4, v5}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 496
    :cond_3
    :goto_0
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 497
    return-object p0

    .line 488
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_4
    instance-of v4, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v4, :cond_5

    move-object v3, p1

    .line 489
    check-cast v3, Ljava/lang/AbstractStringBuilder;

    .line 490
    .local v3, "other":Ljava/lang/AbstractStringBuilder;
    iget-object v4, v3, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v4, p2, v5, v6, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0

    .line 492
    .end local v3    # "other":Ljava/lang/AbstractStringBuilder;
    :cond_5
    move v0, p2

    .local v0, "i":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .local v1, "j":I
    :goto_1
    if-ge v0, p3, :cond_3

    .line 493
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aput-char v5, v4, v1

    .line 492
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 392
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 415
    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    .line 416
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 417
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 418
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 419
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 420
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    const-string/jumbo v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v1

    return-object v1

    .line 428
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 429
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 430
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 431
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 432
    return-object p0
.end method

.method public append(Z)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "b"    # Z

    .prologue
    const/16 v3, 0x65

    .line 570
    if-eqz p1, :cond_0

    .line 571
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 572
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 573
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 574
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 575
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x3

    aput-char v3, v0, v1

    .line 576
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 586
    :goto_0
    return-object p0

    .line 578
    :cond_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 579
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 580
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 581
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 582
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 583
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v1, v1, 0x4

    aput-char v3, v0, v1

    .line 584
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0
.end method

.method public append([C)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "str"    # [C

    .prologue
    .line 518
    array-length v0, p1

    .line 519
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 520
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 521
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 522
    return-object p0
.end method

.method public append([CII)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 549
    if-lez p3, :cond_0

    .line 550
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 551
    :cond_0
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 552
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 553
    return-object p0
.end method

.method public appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .locals 3
    .param p1, "codePoint"    # I

    .prologue
    .line 756
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 758
    .local v0, "count":I
    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 760
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    .line 761
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 769
    :goto_0
    return-object p0

    .line 762
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 764
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p1, v1, v0}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 765
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0

    .line 767
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 202
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 204
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 229
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 257
    add-int/lit8 v0, p1, -0x1

    .line 258
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt v0, v1, :cond_1

    .line 259
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 261
    :cond_1
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v1, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v1

    return v1
.end method

.method public codePointCount(II)I
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 285
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_1

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 285
    :cond_1
    if-gt p1, p2, :cond_0

    .line 288
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCountImpl([CII)I

    move-result v0

    return v0
.end method

.method public delete(II)Ljava/lang/AbstractStringBuilder;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 721
    if-gez p1, :cond_0

    .line 722
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 723
    :cond_0
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v1, :cond_1

    .line 724
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 725
    :cond_1
    if-le p1, p2, :cond_2

    .line 726
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 727
    :cond_2
    sub-int v0, p2, p1

    .line 728
    .local v0, "len":I
    if-lez v0, :cond_3

    .line 729
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, v0

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p2

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 730
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 732
    :cond_3
    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 791
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 793
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 794
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 795
    return-object p0
.end method

.method public ensureCapacity(I)V
    .locals 0
    .param p1, "minimumCapacity"    # I

    .prologue
    .line 103
    if-lez p1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 102
    :cond_0
    return-void
.end method

.method ensureCapacityInternal(I)V
    .locals 1
    .param p1, "minimumCapacity"    # I

    .prologue
    .line 113
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->expandCapacity(I)V

    .line 111
    :cond_0
    return-void
.end method

.method expandCapacity(I)V
    .locals 2
    .param p1, "minimumCapacity"    # I

    .prologue
    .line 122
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 123
    .local v0, "newCapacity":I
    sub-int v1, v0, p1

    if-gez v1, :cond_0

    .line 124
    move v0, p1

    .line 125
    :cond_0
    if-gez v0, :cond_2

    .line 126
    if-gez p1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1

    .line 128
    :cond_1
    const v0, 0x7fffffff

    .line 130
    :cond_2
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 121
    return-void
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .prologue
    .line 350
    if-gez p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 352
    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_2

    .line 353
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 354
    :cond_2
    if-le p1, p2, :cond_3

    .line 355
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v1, "srcBegin > srcEnd"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_3
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 348
    return-void
.end method

.method final getValue()[C
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1332
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1333
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v6, p2

    .line 1332
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->indexOf([CII[CIII)I

    move-result v0

    return v0
.end method

.method public insert(IC)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .prologue
    .line 1190
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1191
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1192
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 1193
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1194
    return-object p0
.end method

.method public insert(ID)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .prologue
    .line 1290
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .prologue
    .line 1266
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .prologue
    .line 1218
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 1242
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1073
    if-nez p2, :cond_0

    .line 1074
    const-string/jumbo p2, "null"

    .line 1075
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1076
    check-cast p2, Ljava/lang/String;

    .end local p2    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 1077
    .restart local p2    # "s":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 7
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1127
    if-nez p2, :cond_0

    .line 1128
    const-string/jumbo p2, "null"

    .line 1129
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v3

    if-le p1, v3, :cond_2

    .line 1130
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dstOffset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    :cond_2
    if-ltz p3, :cond_3

    if-gez p4, :cond_4

    .line 1132
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 1133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", s.length() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1134
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1132
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    :cond_4
    if-gt p3, p4, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt p4, v3, :cond_3

    .line 1135
    sub-int v2, p4, p3

    .line 1136
    .local v2, "len":I
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1137
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p1, v2

    .line 1138
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p1

    .line 1137
    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1139
    move v1, p3

    .local v1, "i":I
    move v0, p1

    .end local p1    # "dstOffset":I
    .local v0, "dstOffset":I
    :goto_0
    if-ge v1, p4, :cond_5

    .line 1140
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "dstOffset":I
    .restart local p1    # "dstOffset":I
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 1139
    add-int/lit8 v1, v1, 0x1

    move v0, p1

    .end local p1    # "dstOffset":I
    .restart local v0    # "dstOffset":I
    goto :goto_0

    .line 1141
    :cond_5
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1142
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 966
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1002
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 1003
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 1004
    :cond_1
    if-nez p2, :cond_2

    .line 1005
    const-string/jumbo p2, "null"

    .line 1006
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1007
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1008
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p1, v0

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1009
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v5, v0, v1, p1}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 1010
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1011
    return-object p0
.end method

.method public insert(IZ)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .prologue
    .line 1166
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(I[C)Ljava/lang/AbstractStringBuilder;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .prologue
    const/4 v5, 0x0

    .line 1040
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 1041
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 1042
    :cond_1
    array-length v0, p2

    .line 1043
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1044
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p1, v0

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1045
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, v5, v1, p1, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1046
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1047
    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 932
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 933
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 934
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 935
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", str.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 937
    array-length v2, p2

    .line 936
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_3
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_2

    .line 938
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 939
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v2, p1, p4

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 940
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 941
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 942
    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1355
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1376
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1377
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v6, p2

    .line 1376
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->lastIndexOf([CII[CIII)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    const/4 v2, 0x0

    .line 311
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 314
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 819
    if-gez p1, :cond_0

    .line 820
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 821
    :cond_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v2, :cond_1

    .line 822
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v3, "start > length()"

    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 823
    :cond_1
    if-le p1, p2, :cond_2

    .line 824
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    const-string/jumbo v3, "start > end"

    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 826
    :cond_2
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v2, :cond_3

    .line 827
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 828
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 829
    .local v0, "len":I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v2, v0

    sub-int v3, p2, p1

    sub-int v1, v2, v3

    .line 830
    .local v1, "newCount":I
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 832
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p1, v0

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 833
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v6, v0, v2, p1}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 834
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 835
    return-object p0
.end method

.method public reverse()Ljava/lang/AbstractStringBuilder;
    .locals 13

    .prologue
    const v12, 0xdfff

    const v11, 0xd800

    .line 1404
    const/4 v2, 0x0

    .line 1405
    .local v2, "hasSurrogate":Z
    iget v9, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v6, v9, -0x1

    .line 1406
    .local v6, "n":I
    add-int/lit8 v9, v6, -0x1

    shr-int/lit8 v5, v9, 0x1

    .local v5, "j":I
    :goto_0
    if-ltz v5, :cond_3

    .line 1407
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v7, v9, v5

    .line 1408
    .local v7, "temp":C
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v10, v6, v5

    aget-char v8, v9, v10

    .line 1409
    .local v8, "temp2":C
    if-nez v2, :cond_0

    .line 1410
    if-lt v7, v11, :cond_1

    if-gt v7, v12, :cond_1

    const/4 v2, 0x1

    .line 1413
    :cond_0
    :goto_1
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v8, v9, v5

    .line 1414
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v10, v6, v5

    aput-char v7, v9, v10

    .line 1406
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1411
    :cond_1
    if-lt v8, v11, :cond_2

    if-gt v8, v12, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1416
    .end local v7    # "temp":C
    .end local v8    # "temp2":C
    :cond_3
    if-eqz v2, :cond_5

    .line 1418
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v9, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_5

    .line 1419
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v1, v9, v3

    .line 1420
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1421
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v10, v3, 0x1

    aget-char v0, v9, v10

    .line 1422
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1423
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aput-char v0, v9, v3

    .line 1424
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v1, v9, v4

    move v3, v4

    .line 1418
    .end local v0    # "c1":C
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1429
    .end local v1    # "c2":C
    .end local v3    # "i":I
    :cond_5
    return-object p0
.end method

.method public setCharAt(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 374
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 376
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 373
    return-void
.end method

.method public setLength(I)V
    .locals 3
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 172
    if-gez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 176
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, p1, :cond_1

    .line 177
    :goto_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, p1, :cond_2

    .line 178
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v2, v0, v1

    .line 177
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0

    .line 180
    :cond_1
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 171
    :cond_2
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 880
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 850
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 898
    if-gez p1, :cond_0

    .line 899
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 900
    :cond_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v0, :cond_1

    .line 901
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 902
    :cond_1
    if-le p1, p2, :cond_2

    .line 903
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 904
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public trimToSize()V
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 140
    :cond_0
    return-void
.end method
