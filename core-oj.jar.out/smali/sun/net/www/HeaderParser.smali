.class public Lsun/net/www/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/HeaderParser$ParserIterator;
    }
.end annotation


# instance fields
.field asize:I

.field nkeys:I

.field raw:Ljava/lang/String;

.field tab:[[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lsun/net/www/HeaderParser;->asize:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lsun/net/www/HeaderParser;->asize:I

    .line 58
    iput-object p1, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    .line 59
    const-class v0, Ljava/lang/String;

    new-array v1, v4, [I

    iget v2, p0, Lsun/net/www/HeaderParser;->asize:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lsun/net/www/HeaderParser;->parse()V

    .line 57
    return-void
.end method

.method private parse()V
    .locals 14

    .prologue
    .line 86
    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 87
    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    .line 88
    iget-object v10, p0, Lsun/net/www/HeaderParser;->raw:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 89
    .local v2, "ca":[C
    const/4 v0, 0x0

    .local v0, "beg":I
    const/4 v3, 0x0

    .local v3, "end":I
    const/4 v4, 0x0

    .line 90
    .local v4, "i":I
    const/4 v6, 0x1

    .line 91
    .local v6, "inKey":Z
    const/4 v7, 0x0

    .line 92
    .local v7, "inQuote":Z
    array-length v8, v2

    .local v8, "len":I
    move v5, v4

    .line 93
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    if-ge v3, v8, :cond_d

    .line 94
    aget-char v1, v2, v3

    .line 95
    .local v1, "c":C
    const/16 v10, 0x3d

    if-ne v1, v10, :cond_0

    if-eqz v7, :cond_4

    .line 100
    :cond_0
    const/16 v10, 0x22

    if-ne v1, v10, :cond_6

    .line 101
    if-eqz v7, :cond_5

    .line 102
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 103
    const/4 v7, 0x0

    .line 105
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 106
    if-ge v3, v8, :cond_2

    aget-char v10, v2, v3

    const/16 v11, 0x20

    if-eq v10, v11, :cond_1

    aget-char v10, v2, v3

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_1

    .line 107
    :cond_2
    const/4 v6, 0x1

    .line 108
    move v0, v3

    .line 131
    :goto_1
    iget v10, p0, Lsun/net/www/HeaderParser;->asize:I

    if-ne v4, v10, :cond_3

    .line 132
    iget v10, p0, Lsun/net/www/HeaderParser;->asize:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, p0, Lsun/net/www/HeaderParser;->asize:I

    .line 133
    const-class v10, Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [I

    iget v12, p0, Lsun/net/www/HeaderParser;->asize:I

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x2

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 134
    .local v9, "ntab":[[Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    iget-object v11, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    array-length v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v12, v9, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iput-object v9, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    .end local v9    # "ntab":[[Ljava/lang/String;
    :cond_3
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 96
    :cond_4
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 97
    const/4 v6, 0x0

    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    move v0, v3

    move v4, v5

    .line 95
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 110
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_5
    const/4 v7, 0x1

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    move v0, v3

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 114
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_6
    const/16 v10, 0x20

    if-eq v1, v10, :cond_7

    const/16 v10, 0x2c

    if-ne v1, v10, :cond_c

    .line 115
    :cond_7
    if-eqz v7, :cond_8

    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    goto/16 :goto_0

    .line 118
    :cond_8
    if-eqz v6, :cond_a

    .line 119
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 123
    :goto_2
    if-ge v3, v8, :cond_b

    aget-char v10, v2, v3

    const/16 v11, 0x20

    if-eq v10, v11, :cond_9

    aget-char v10, v2, v3

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_b

    .line 124
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_a
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    goto :goto_2

    .line 126
    :cond_b
    const/4 v6, 0x1

    .line 127
    move v0, v3

    goto/16 :goto_1

    .line 129
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .line 139
    .end local v1    # "c":C
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_d
    add-int/lit8 v3, v3, -0x1

    if-le v3, v0, :cond_11

    .line 140
    if-nez v6, :cond_10

    .line 141
    aget-char v10, v2, v3

    const/16 v11, 0x22

    if-ne v10, v11, :cond_f

    .line 142
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 160
    :goto_3
    iput v4, p0, Lsun/net/www/HeaderParser;->nkeys:I

    .line 84
    .end local v0    # "beg":I
    .end local v2    # "ca":[C
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v6    # "inKey":Z
    .end local v7    # "inQuote":Z
    .end local v8    # "len":I
    :cond_e
    return-void

    .line 144
    .restart local v0    # "beg":I
    .restart local v2    # "ca":[C
    .restart local v3    # "end":I
    .restart local v5    # "i":I
    .restart local v6    # "inKey":Z
    .restart local v7    # "inQuote":Z
    .restart local v8    # "len":I
    :cond_f
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    goto :goto_3

    .line 147
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_10
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v0

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v2, v0, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    goto :goto_3

    .line 149
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_11
    if-ne v3, v0, :cond_14

    .line 150
    if-nez v6, :cond_13

    .line 151
    aget-char v10, v2, v3

    const/16 v11, 0x22

    if-ne v10, v11, :cond_12

    .line 152
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    add-int/lit8 v11, v3, -0x1

    aget-char v11, v2, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    goto :goto_3

    .line 154
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_12
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    aget-char v11, v2, v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    goto :goto_3

    .line 157
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_13
    iget-object v10, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-object v10, v10, v5

    aget-char v11, v2, v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    goto :goto_3

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_14
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3
.end method


# virtual methods
.method public findInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "Default"    # I

    .prologue
    .line 242
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "t":Ljava/lang/Throwable;
    return p2
.end method

.method public findKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 166
    if-ltz p1, :cond_0

    iget v0, p0, Lsun/net/www/HeaderParser;->asize:I

    if-le p1, v0, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_1
    iget-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public findValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 172
    if-ltz p1, :cond_0

    iget v0, p0, Lsun/net/www/HeaderParser;->asize:I

    if-le p1, v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_1
    iget-object v0, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public findValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "Default"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 182
    if-nez p1, :cond_0

    .line 183
    return-object p2

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/net/www/HeaderParser;->asize:I

    if-ge v0, v1, :cond_3

    .line 186
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 187
    return-object p2

    .line 188
    :cond_1
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 185
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_3
    return-object p2
.end method

.method public keys()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lsun/net/www/HeaderParser$ParserIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/net/www/HeaderParser$ParserIterator;-><init>(Lsun/net/www/HeaderParser;Z)V

    return-object v0
.end method

.method public subsequence(II)Lsun/net/www/HeaderParser;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 71
    if-nez p1, :cond_0

    iget v1, p0, Lsun/net/www/HeaderParser;->nkeys:I

    if-ne p2, v1, :cond_0

    .line 72
    return-object p0

    .line 74
    :cond_0
    if-ltz p1, :cond_1

    if-lt p1, p2, :cond_2

    .line 75
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid start or end"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_2
    iget v1, p0, Lsun/net/www/HeaderParser;->nkeys:I

    if-gt p2, v1, :cond_1

    .line 76
    new-instance v0, Lsun/net/www/HeaderParser;

    invoke-direct {v0}, Lsun/net/www/HeaderParser;-><init>()V

    .line 77
    .local v0, "n":Lsun/net/www/HeaderParser;
    const-class v1, Ljava/lang/String;

    new-array v2, v5, [I

    iget v3, p0, Lsun/net/www/HeaderParser;->asize:I

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, v0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    .line 78
    iget v1, p0, Lsun/net/www/HeaderParser;->asize:I

    iput v1, v0, Lsun/net/www/HeaderParser;->asize:I

    .line 79
    iget-object v1, p0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    iget-object v2, v0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    sub-int v3, p2, p1

    invoke-static {v1, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    sub-int v1, p2, p1

    iput v1, v0, Lsun/net/www/HeaderParser;->nkeys:I

    .line 81
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 222
    invoke-virtual {p0}, Lsun/net/www/HeaderParser;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    .local v1, "k":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lsun/net/www/HeaderParser;->asize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " nkeys="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lsun/net/www/HeaderParser;->nkeys:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lsun/net/www/HeaderParser;->findValue(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    const/4 v4, 0x0

    .line 231
    .end local v4    # "val":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_2

    const-string/jumbo v5, ""

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 236
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v5
.end method

.method public values()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lsun/net/www/HeaderParser$ParserIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsun/net/www/HeaderParser$ParserIterator;-><init>(Lsun/net/www/HeaderParser;Z)V

    return-object v0
.end method
