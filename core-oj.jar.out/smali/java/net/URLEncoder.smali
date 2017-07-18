.class public Ljava/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static final caseDiff:I = 0x20

.field static dfltEncName:Ljava/lang/String;

.field static dontNeedEncoding:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    sput-object v1, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "file.encoding"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v4, Ljava/io/CharArrayWriter;

    invoke-direct {v4}, Ljava/io/CharArrayWriter;-><init>()V

    if-nez p1, :cond_0

    new-instance v14, Ljava/lang/NullPointerException;

    const-string/jumbo v15, "charsetName"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const/4 v9, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v14, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v14, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v14, 0x20

    if-ne v2, v14, :cond_1

    const/16 v2, 0x2b

    const/4 v11, 0x1

    :cond_1
    int-to-char v14, v2

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v14, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v14

    :catch_1
    move-exception v7

    new-instance v14, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    invoke-virtual {v4, v2}, Ljava/io/CharArrayWriter;->write(I)V

    const v14, 0xd800

    if-lt v2, v14, :cond_3

    const v14, 0xdbff

    if-gt v2, v14, :cond_3

    add-int/lit8 v14, v9, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_3

    add-int/lit8 v14, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v14, 0xdc00

    if-lt v6, v14, :cond_3

    const v14, 0xdfff

    if-gt v6, v14, :cond_3

    invoke-virtual {v4, v6}, Ljava/io/CharArrayWriter;->write(I)V

    add-int/lit8 v9, v9, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_4

    sget-object v14, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v14, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_4
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->flush()V

    new-instance v13, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v13, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v10, 0x0

    :goto_1
    array-length v14, v1

    if-ge v10, v14, :cond_7

    const/16 v14, 0x25

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_5

    add-int/lit8 v14, v3, -0x20

    int-to-char v3, v14

    :cond_5
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v14, v1, v10

    and-int/lit8 v14, v14, 0xf

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_6

    add-int/lit8 v14, v3, -0x20

    int-to-char v3, v14

    :cond_6
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->reset()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v11, :cond_9

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    return-object p0
.end method
