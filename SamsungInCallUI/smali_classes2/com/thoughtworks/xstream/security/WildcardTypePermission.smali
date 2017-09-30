.class public Lcom/thoughtworks/xstream/security/WildcardTypePermission;
.super Lcom/thoughtworks/xstream/security/RegExpTypePermission;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;->getRegExpPatterns([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private static getRegExpPatterns([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/16 v9, 0x2e

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v4, p0, v0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "(?u)"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :sswitch_0
    const/16 v8, 0x5c

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :sswitch_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :sswitch_2
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_1

    const-string v7, "[\\P{C}]*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    const-string v7, "[\\P{C}&&[^"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_0

    nop

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
