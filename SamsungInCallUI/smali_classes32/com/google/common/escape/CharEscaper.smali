.class public abstract Lcom/google/common/escape/CharEscaper;
.super Lcom/google/common/escape/Escaper;
.source "CharEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DEST_PAD_MULTIPLIER:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .locals 2

    const/4 v1, 0x0

    new-array v0, p2, [C

    if-lez p1, :cond_0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract escape(C)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    array-length v4, v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge p2, v9, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length v7, v6

    sub-int v1, p2, v5

    add-int v10, v3, v1

    add-int v8, v10, v7

    if-ge v4, v8, :cond_1

    sub-int v10, v9, p2

    mul-int/lit8 v10, v10, 0x2

    add-int v4, v8, v10

    invoke-static {v2, v3, v4}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v2

    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {p1, v5, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v3, v1

    :cond_2
    if-lez v7, :cond_3

    invoke-static {v6, v11, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v7

    :cond_3
    add-int/lit8 v5, p2, 0x1

    goto :goto_1

    :cond_4
    sub-int v0, v9, v5

    if-lez v0, :cond_6

    add-int v8, v3, v0

    if-ge v4, v8, :cond_5

    invoke-static {v2, v3, v8}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v2

    :cond_5
    invoke-virtual {p1, v5, v9, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v8

    :cond_6
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v11, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v10
.end method
