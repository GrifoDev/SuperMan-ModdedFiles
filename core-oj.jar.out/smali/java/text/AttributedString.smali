.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$AttributeMap;,
        Ljava/text/AttributedString$AttributedStringIterator;
    }
.end annotation


# static fields
.field private static final ARRAY_SIZE_INCREMENT:I = 0xa


# instance fields
.field runArraySize:I

.field runAttributeValues:[Ljava/util/Vector;

.field runAttributes:[Ljava/util/Vector;

.field runCount:I

.field runStarts:[I

.field text:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/text/AttributedString;I)C
    .locals 1

    invoke-direct {p0, p1}, Ljava/text/AttributedString;->charAt(I)C

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_1
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Can\'t add attribute to 0-length text"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v5, v6

    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v5, v6

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 3

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .locals 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v11

    move/from16 v0, p2

    if-lt v0, v9, :cond_1

    move/from16 v0, p3

    if-le v0, v11, :cond_2

    :cond_1
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Invalid substring range"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    move/from16 v0, p2

    move/from16 v1, p3

    if-gt v0, v1, :cond_1

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p1 .. p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v3

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v13

    move/from16 v0, p3

    if-ge v13, v0, :cond_3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    if-nez p4, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    return-void

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v4, v13, :cond_6

    aget-object v13, p4, v4

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v13

    move/from16 v0, p3

    if-ge v13, v0, :cond_8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_9

    instance-of v13, v12, Ljava/text/Annotation;

    if-eqz v13, :cond_b

    move/from16 v0, p2

    if-lt v8, v0, :cond_a

    move/from16 v0, p3

    if-gt v7, v0, :cond_a

    sub-int v13, v8, p2

    sub-int v14, v7, p2

    invoke-virtual {p0, v2, v12, v13, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_9
    :goto_5
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_4

    :cond_a
    move/from16 v0, p3

    if-le v7, v0, :cond_9

    goto :goto_3

    :cond_b
    move/from16 v0, p3

    if-ge v8, v0, :cond_8

    move/from16 v0, p2

    if-le v7, v0, :cond_9

    move/from16 v0, p2

    if-ge v8, v0, :cond_c

    move/from16 v8, p2

    :cond_c
    move/from16 v0, p3

    if-le v7, v0, :cond_d

    move/from16 v7, p3

    :cond_d
    if-eq v8, v7, :cond_9

    sub-int v13, v8, p2

    sub-int v14, v7, p2

    invoke-virtual {p0, v2, v12, v13, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_5

    :cond_e
    return-void
.end method

.method constructor <init>([Ljava/text/AttributedCharacterIterator;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "Iterators must not be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    array-length v9, p1

    if-nez v9, :cond_2

    const-string/jumbo v9, ""

    iput-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v9, p1

    if-ge v2, v9, :cond_3

    aget-object v9, p1, v2

    invoke-direct {p0, v1, v9}, Ljava/text/AttributedString;->appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v9, p1

    if-ge v2, v9, :cond_1

    aget-object v5, p1, v2

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v8

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v3

    move v4, v8

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-interface {v5, v4}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/text/AttributedString;->mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_4

    sub-int v9, v4, v8

    add-int/2addr v9, v7

    invoke-direct {p0, v0, v9}, Ljava/text/AttributedString;->setAttributes(Ljava/util/Map;I)V

    :cond_4
    move-object v6, v0

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v4

    goto :goto_2

    :cond_5
    sub-int v9, v3, v8

    add-int/2addr v7, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private declared-synchronized addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    :cond_0
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    invoke-direct {p0, p4}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 7

    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_2

    const/4 v2, -0x1

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    if-nez v6, :cond_0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v6, v1

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v6, v1

    :goto_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :try_start_0
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Ljava/util/Vector;->setSize(I)V

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Ljava/util/Vector;->setSize(I)V

    goto :goto_2

    :cond_1
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .locals 4

    invoke-interface {p2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    invoke-interface {p2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p2, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-interface {p2}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private attributeValuesMatch(Ljava/util/Set;II)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-direct {p0, v1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, p3}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private charAt(I)C
    .locals 1

    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private final createRunAttributeDataVectors()V
    .locals 4

    const/16 v3, 0xa

    new-array v2, v3, [I

    new-array v1, v3, [Ljava/util/Vector;

    new-array v0, v3, [Ljava/util/Vector;

    iput-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    iput-object v1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iput-object v0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iput v3, p0, Ljava/text/AttributedString;->runArraySize:I

    const/4 v3, 0x1

    iput v3, p0, Ljava/text/AttributedString;->runCount:I

    return-void
.end method

.method private final ensureRunBreak(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v0

    return v0
.end method

.method private final ensureRunBreak(IZ)I
    .locals 13

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v10

    if-ne p1, v10, :cond_0

    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    return v10

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v9, v10, :cond_1

    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v9

    if-ge v10, p1, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v9, v10, :cond_2

    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v9

    if-ne v10, p1, :cond_2

    return v9

    :cond_2
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    iget v11, p0, Ljava/text/AttributedString;->runArraySize:I

    if-ne v10, v11, :cond_4

    iget v10, p0, Ljava/text/AttributedString;->runArraySize:I

    add-int/lit8 v1, v10, 0xa

    new-array v6, v1, [I

    new-array v5, v1, [Ljava/util/Vector;

    new-array v3, v1, [Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_1
    iget v10, p0, Ljava/text/AttributedString;->runArraySize:I

    if-ge v0, v10, :cond_3

    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v0

    aput v10, v6, v0

    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v10, v10, v0

    aput-object v10, v5, v0

    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v10, v10, v0

    aput-object v10, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-object v6, p0, Ljava/text/AttributedString;->runStarts:[I

    iput-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iput-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iput v1, p0, Ljava/text/AttributedString;->runArraySize:I

    :cond_4
    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v11, v9, -0x1

    aget-object v8, v10, v11

    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v11, v9, -0x1

    aget-object v7, v10, v11

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    :cond_6
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljava/text/AttributedString;->runCount:I

    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v0, v10, -0x1

    :goto_2
    if-le v0, v9, :cond_7

    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    iget-object v11, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v12, v0, -0x1

    aget v11, v11, v12

    aput v11, v10, v0

    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget-object v11, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    aput-object v11, v10, v0

    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget-object v11, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    aput-object v11, v10, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aput p1, v10, v9

    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v10, v9

    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v2, v10, v9

    return v9
.end method

.method private declared-synchronized getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v2, v3, p2

    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v1, v3, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-object v4

    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    :cond_1
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/text/Annotation;

    if-eqz v5, :cond_5

    if-lez p3, :cond_1

    move v0, p2

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v5, p2

    :goto_0
    if-lt v2, p3, :cond_0

    add-int/lit8 v5, v0, -0x1

    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v5, v0

    goto :goto_0

    :cond_0
    if-ge v2, p3, :cond_1

    return-object v7

    :cond_1
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v3

    if-ge p4, v3, :cond_5

    move v0, p2

    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge p2, v5, :cond_2

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v6, p2, 0x1

    aget v1, v5, v6

    :goto_1
    if-gt v1, p4, :cond_4

    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v6, v0, 0x1

    aget v1, v5, v6

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    if-le v1, p4, :cond_5

    return-object v7

    :cond_5
    return-object v4
.end method

.method private static mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private setAttributes(Ljava/util/Map;I)V
    .locals 8

    const/4 v7, 0x0

    iget v6, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v6, :cond_0

    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    :cond_0
    invoke-direct {p0, p2, v7}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v5}, Ljava/util/Vector;-><init>(I)V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v3, v6, v1

    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v4, v6, v1

    :cond_2
    return-void
.end method

.method private static final valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Can\'t add attribute to 0-length text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2, v1, v0}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p3, :cond_1

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-le p4, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ge p3, p4, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v4

    if-le p3, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid substring range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    if-gt p2, p3, :cond_1

    if-ne p2, p3, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Can\'t add attribute to 0-length text"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget v4, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v4, :cond_5

    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    :cond_5
    invoke-direct {p0, p2}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 3

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .locals 2

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 1

    new-instance v0, Ljava/text/AttributedString$AttributedStringIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedStringIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method length()I
    .locals 1

    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
