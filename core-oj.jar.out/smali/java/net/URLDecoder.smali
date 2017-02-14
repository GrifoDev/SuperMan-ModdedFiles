.class public Ljava/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# static fields
.field static dfltEncName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    sput-object v0, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v12, 0x25

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v10, 0x1f4

    if-le v5, v10, :cond_0

    div-int/lit8 v10, v5, 0x2

    :goto_0
    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/io/UnsupportedEncodingException;

    const-string/jumbo v11, "URLDecoder: empty string enc parameter"

    invoke-direct {v10, v11}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    move v10, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v3, v5, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_0
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_1
    if-nez v0, :cond_2

    sub-int v10, v5, v3

    :try_start_0
    div-int/lit8 v10, v10, 0x3

    new-array v0, v10, [B

    :cond_2
    const/4 v6, 0x0

    move v7, v6

    :goto_2
    add-int/lit8 v10, v3, 0x2

    if-ge v10, v5, :cond_6

    if-ne v1, v12, :cond_6

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v10, v3, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v3, 0x3

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_4

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern - negative value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x3

    invoke-virtual {p0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    :try_start_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x3

    invoke-virtual {p0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    add-int/lit8 v6, v7, 0x1

    int-to-byte v10, v9

    aput-byte v10, v0, v7

    add-int/lit8 v3, v3, 0x3

    if-ge v3, v5, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_5
    move v7, v6

    goto/16 :goto_2

    :cond_6
    if-ge v3, v5, :cond_7

    if-ne v1, v12, :cond_7

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "URLDecoder: Incomplete trailing escape (%) pattern"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidHexChar(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-gt v2, p0, :cond_1

    const/16 v2, 0x39

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x61

    if-gt v2, p0, :cond_2

    const/16 v2, 0x66

    if-le p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x41

    if-gt v2, p0, :cond_3

    const/16 v2, 0x46

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
