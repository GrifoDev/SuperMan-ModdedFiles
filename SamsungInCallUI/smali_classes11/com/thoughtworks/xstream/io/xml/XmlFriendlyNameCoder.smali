.class public Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
.super Ljava/lang/Object;
.source "XmlFriendlyNameCoder.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/naming/NameCoder;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;
    }
.end annotation


# static fields
.field private static final XML_NAME_CHAR_EXTRA_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

.field private static final XML_NAME_START_CHAR_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;


# instance fields
.field private final dollarReplacement:Ljava/lang/String;

.field private transient escapeCache:Ljava/util/Map;

.field private final escapeCharReplacement:Ljava/lang/String;

.field private final hexPrefix:Ljava/lang/String;

.field private transient unescapeCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    const/16 v1, 0xc0

    const/16 v2, 0xd6

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0xd8

    const/16 v2, 0xf6

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0xf8

    const/16 v2, 0x2ff

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x370

    const/16 v2, 0x37d

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x37f

    const/16 v2, 0x1fff

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x200c

    const/16 v2, 0x200d

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x2070

    const/16 v2, 0x218f

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x2c00

    const/16 v2, 0x2fef

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x3001

    const v2, 0xd7ff

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const v1, 0xf900

    const v2, 0xfdcf

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const v1, 0xfdf0

    const v2, 0xfffd

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/high16 v1, 0x10000

    const v2, 0xeffff

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    nop

    nop

    sput-object v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_START_CHAR_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0xb7

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    const/16 v1, 0x300

    const/16 v2, 0x36f

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    const/16 v1, 0x203f

    const/16 v2, 0x2040

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    nop

    nop

    sput-object v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_CHAR_EXTRA_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "_-"

    const-string v1, "__"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "_."

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    iput-object p3, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->readResolve()Ljava/lang/Object;

    return-void
.end method

.method private decodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_8

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    if-ne v4, v5, :cond_2

    :goto_1
    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, 0x8

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lez v4, :cond_3

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    if-ge v4, v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v4, v8

    const/16 v8, 0x24

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    add-int/lit8 v8, v4, 0x4

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v0, v8

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    if-ne v0, v2, :cond_6

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v4, v8

    const/16 v8, 0x5f

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    invoke-interface {v8, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object p1, v7

    goto :goto_1
.end method

.method private encodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5f

    const/16 v6, 0x24

    iget-object v5, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_0

    if-eq v0, v7, :cond_0

    const/16 v5, 0x1b

    if-le v0, v5, :cond_0

    const/16 v5, 0x7f

    if-lt v0, v5, :cond_1

    :cond_0
    if-ne v1, v2, :cond_2

    :goto_1
    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v2, 0x8

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lez v1, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    if-ge v1, v2, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v5, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-ne v0, v7, :cond_5

    iget-object v5, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isXmlNameStartChar(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    if-lez v1, :cond_b

    invoke-static {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isXmlNameChar(I)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_7
    iget-object v5, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x10

    if-ge v0, v5, :cond_9

    const-string v5, "000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    const/16 v5, 0x100

    if-ge v0, v5, :cond_a

    const-string v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_a
    const/16 v5, 0x1000

    if-ge v0, v5, :cond_8

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move-object p1, v4

    goto :goto_1
.end method

.method private static isInNameCharBounds(I[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v1, p1, v0

    iget v2, v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;->min:I

    if-lt p0, v2, :cond_0

    iget v2, v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;->max:I

    if-gt p0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isXmlNameChar(I)Z
    .locals 1

    invoke-static {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isXmlNameStartChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_CHAR_EXTRA_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-static {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isInNameCharBounds(I[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isXmlNameStartChar(I)Z
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_START_CHAR_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-static {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isInNameCharBounds(I[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;)Z

    move-result v0

    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->createCacheMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->createCacheMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->readResolve()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v3, "Cannot clone XmlFriendlyNameCoder"

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createCacheMap()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public decodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->encodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->encodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
