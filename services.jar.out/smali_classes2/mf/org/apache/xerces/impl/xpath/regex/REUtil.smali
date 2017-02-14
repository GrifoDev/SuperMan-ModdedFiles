.class public final Lmf/org/apache/xerces/impl/xpath/regex/REUtil;
.super Ljava/lang/Object;
.source "REUtil.java"


# static fields
.field static final CACHESIZE:I = 0x14

.field static final regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final composeFromSurrogates(II)I
    .locals 2

    const v0, 0xd800

    sub-int v0, p0, v0

    shl-int/lit8 v0, v0, 0xa

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    const v1, 0xdc00

    sub-int/2addr v0, v1

    return v0
.end method

.method static final createOptionString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit16 v1, p0, 0x100

    if-nez v1, :cond_0

    :goto_0
    and-int/lit16 v1, p0, 0x80

    if-nez v1, :cond_1

    :goto_1
    and-int/lit16 v1, p0, 0x200

    if-nez v1, :cond_2

    :goto_2
    and-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_3

    :goto_3
    and-int/lit8 v1, p0, 0x8

    if-nez v1, :cond_4

    :goto_4
    and-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_5

    :goto_5
    and-int/lit8 v1, p0, 0x20

    if-nez v1, :cond_6

    :goto_6
    and-int/lit8 v1, p0, 0x40

    if-nez v1, :cond_7

    :goto_7
    and-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_8

    :goto_8
    and-int/lit16 v1, p0, 0x400

    if-nez v1, :cond_9

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_7
    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_8
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_9
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9
.end method

.method public static createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    monitor-enter v4

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    :try_start_0
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->equals(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v2, 0x0

    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v5, 0x1

    const/16 v6, 0x13

    invoke-static {v1, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    :cond_1
    :goto_2
    monitor-exit v4

    return-object v0

    :cond_2
    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_1

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v3, 0x0

    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v6, 0x1

    invoke-static {v2, v3, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method static final decomposeToSurrogates(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/high16 v1, 0x10000

    sub-int v1, p0, v1

    const/4 v2, 0x0

    shr-int/lit8 v3, v1, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v0, v2

    const/4 v2, 0x1

    and-int/lit16 v1, v1, 0x3ff

    const v3, 0xdc00

    add-int/2addr v1, v3

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static dumpString(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method static final getOptionValue(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x40

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x100

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x80

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x200

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x400

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_9
        0x46 -> :sswitch_6
        0x48 -> :sswitch_7
        0x58 -> :sswitch_8
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_2
        0x75 -> :sswitch_4
        0x77 -> :sswitch_5
        0x78 -> :sswitch_3
    .end sparse-switch
.end method

.method static final isHighSurrogate(I)Z
    .locals 2

    const v0, 0xfc00

    and-int/2addr v0, p0

    const v1, 0xd800

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static final isLowSurrogate(I)Z
    .locals 2

    const v0, 0xfc00

    and-int/2addr v0, p0

    const v1, 0xdc00

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v1, ""

    array-length v0, p0

    if-eqz v0, :cond_1

    :goto_0
    move v4, v3

    move-object v0, v2

    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_c

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    if-eqz v2, :cond_4

    if-eqz v0, :cond_5

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unnecessary: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Error:Usage: java REUtil -i|-m|-s|-u|-w|-X regularExpression String"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v2, :cond_f

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mf.org.apache.xerces.utils.regex.ParseException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "        "

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->getLocation()I

    move-result v2

    if-gez v2, :cond_10

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_1
    aget-object v5, p0, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    aget-object v5, p0, v4

    const-string/jumbo v6, "-i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, p0, v4

    const-string/jumbo v6, "-m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, p0, v4

    const-string/jumbo v6, "-s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    aget-object v5, p0, v4

    const-string/jumbo v6, "-u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    aget-object v5, p0, v4

    const-string/jumbo v6, "-w"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    aget-object v5, p0, v4

    const-string/jumbo v6, "-X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknown option: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    :try_start_2
    aget-object v2, p0, v4

    goto/16 :goto_2

    :cond_5
    aget-object v0, p0, v4

    goto/16 :goto_2

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "i"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "m"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "s"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "u"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "w"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "X"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-direct {v4, v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "RegularExpression: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    invoke-virtual {v4, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move v0, v3

    :goto_4
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getNumberOfGroups()I

    move-result v4

    if-ge v0, v4, :cond_2

    if-eqz v0, :cond_d

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v4

    if-ltz v4, :cond_e

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getCapturedText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "Matched range for the whole pattern: "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "-1"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->printStackTrace()V

    goto/16 :goto_3

    :cond_10
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v3

    :goto_7
    if-ge v0, v2, :cond_11

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "^"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final parseOptions(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v2

    if-eqz v2, :cond_1

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown Option: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    return v1
.end method

.method public static quoteMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string/jumbo v5, ".*+?{[()|\\^$"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    if-nez v0, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    :goto_2
    const/16 v5, 0x5c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v5, v3, v1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lez v1, :cond_1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    :goto_3
    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method static stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x5d

    const/16 v8, 0x5b

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v0

    :cond_0
    :goto_0
    if-ge v1, v3, :cond_15

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_2

    :cond_1
    if-gtz v0, :cond_5

    move v1, v2

    goto :goto_0

    :cond_2
    if-eq v1, v6, :cond_1

    const/16 v5, 0xc

    if-eq v1, v5, :cond_1

    if-eq v1, v7, :cond_1

    const/16 v5, 0x20

    if-eq v1, v5, :cond_1

    const/16 v5, 0x23

    if-eq v1, v5, :cond_7

    const/16 v5, 0x5c

    if-eq v1, v5, :cond_9

    :cond_3
    if-eq v1, v8, :cond_c

    if-gtz v0, :cond_14

    :cond_4
    :goto_1
    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    :cond_5
    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    :cond_6
    if-eq v2, v6, :cond_0

    move v2, v1

    :cond_7
    if-ge v2, v3, :cond_8

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_6

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x23

    if-ne v1, v5, :cond_b

    :cond_a
    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_b
    const/16 v5, 0x9

    if-eq v1, v5, :cond_a

    if-eq v1, v6, :cond_a

    const/16 v5, 0xc

    if-eq v1, v5, :cond_a

    if-eq v1, v7, :cond_a

    const/16 v5, 0x20

    if-eq v1, v5, :cond_a

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v2, v3, :cond_d

    move v1, v2

    goto :goto_0

    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_f

    :cond_e
    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x1

    goto/16 :goto_0

    :cond_f
    if-eq v1, v9, :cond_e

    const/16 v5, 0x5e

    if-eq v1, v5, :cond_11

    :cond_10
    move v1, v2

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v3, :cond_10

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_13

    :cond_12
    const/16 v5, 0x5e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x2

    goto/16 :goto_0

    :cond_13
    if-eq v1, v9, :cond_12

    move v1, v2

    goto/16 :goto_0

    :cond_14
    if-ne v1, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final substring(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 3

    sub-int v0, p2, p1

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int v2, v0, p1

    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
