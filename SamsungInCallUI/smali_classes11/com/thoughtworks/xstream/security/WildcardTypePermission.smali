.class public Lcom/thoughtworks/xstream/security/WildcardTypePermission;
.super Lcom/thoughtworks/xstream/security/RegExpTypePermission;
.source "WildcardTypePermission.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;->getRegExpPatterns([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private static getRegExpPatterns([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "wildcards"    # [Ljava/lang/String;

    .prologue
    const/16 v9, 0x2e

    .line 37
    if-nez p0, :cond_1

    .line 38
    const/4 v4, 0x0

    .line 82
    :cond_0
    return-object v4

    .line 39
    :cond_1
    array-length v7, p0

    new-array v4, v7, [Ljava/lang/String;

    .line 40
    .local v4, "regexps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_0

    .line 41
    aget-object v6, p0, v1

    .line 42
    .local v6, "wildcardExpression":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 43
    .local v5, "result":Ljava/lang/StringBuffer;
    const-string v7, "(?u)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 45
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 46
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 47
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 76
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    :sswitch_0
    const/16 v7, 0x5c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 62
    :sswitch_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 67
    :sswitch_2
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v3, :cond_2

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_2

    .line 68
    const-string v7, "[\\P{C}]*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 71
    :cond_2
    const-string v7, "[\\P{C}&&[^"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 80
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2e -> :sswitch_0
        0x3f -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method
