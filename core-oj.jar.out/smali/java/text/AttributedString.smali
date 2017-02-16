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
    .param p1, "attributes"    # Ljava/util/Set;
    .param p2, "runIndex1"    # I
    .param p3, "runIndex2"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value1"    # Ljava/lang/Object;
    .param p1, "value2"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/text/AttributedString;I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/text/AttributedString;->charAt(I)C

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .locals 1
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .locals 1
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
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

    .prologue
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    const/4 v6, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 146
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 148
    :cond_1
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 151
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    return-void

    .line 153
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Can\'t add attribute to 0-length text"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 157
    .local v0, "attributeCount":I
    if-lez v0, :cond_4

    .line 158
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 159
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    .line 160
    .local v4, "newRunAttributes":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    .line 161
    .local v3, "newRunAttributeValues":Ljava/util/Vector;
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v5, v6

    .line 162
    iget-object v5, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v5, v6

    .line 163
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "newRunAttributeValues":Ljava/util/Vector;
    .end local v4    # "newRunAttributes":Ljava/util/Vector;
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 3
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;

    .prologue
    .line 182
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .locals 1
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .locals 15
    .param p1, "text"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 239
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v9

    .line 240
    .local v9, "textBeginIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v11

    .line 241
    .local v11, "textEndIndex":I
    move/from16 v0, p2

    if-lt v0, v9, :cond_1

    move/from16 v0, p3

    if-le v0, v11, :cond_2

    .line 242
    :cond_1
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Invalid substring range"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 241
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p3

    if-gt v0, v1, :cond_1

    .line 245
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v10, "textBuffer":Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 247
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v3

    .local v3, "c":C
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v13

    move/from16 v0, p3

    if-ge v13, v0, :cond_3

    .line 248
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 251
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 252
    return-void

    .line 255
    :cond_4
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 256
    .local v6, "keys":Ljava/util/HashSet;
    if-nez p4, :cond_5

    .line 257
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 263
    :goto_1
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 264
    return-void

    .line 259
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v4, v13, :cond_6

    .line 260
    aget-object v13, p4, v4

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 261
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 269
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 270
    .local v5, "itr":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 271
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 272
    .local v2, "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 273
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v13

    move/from16 v0, p3

    if-ge v13, v0, :cond_8

    .line 274
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v8

    .line 275
    .local v8, "start":I
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v7

    .line 276
    .local v7, "limit":I
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v12

    .line 278
    .local v12, "value":Ljava/lang/Object;
    if-eqz v12, :cond_9

    .line 279
    instance-of v13, v12, Ljava/text/Annotation;

    if-eqz v13, :cond_b

    .line 280
    move/from16 v0, p2

    if-lt v8, v0, :cond_a

    move/from16 v0, p3

    if-gt v7, v0, :cond_a

    .line 281
    sub-int v13, v8, p2

    sub-int v14, v7, p2

    invoke-virtual {p0, v2, v12, v13, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 303
    :cond_9
    :goto_5
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_4

    .line 283
    :cond_a
    move/from16 v0, p3

    if-le v7, v0, :cond_9

    goto :goto_3

    .line 289
    :cond_b
    move/from16 v0, p3

    if-ge v8, v0, :cond_8

    .line 291
    move/from16 v0, p2

    if-le v7, v0, :cond_9

    .line 293
    move/from16 v0, p2

    if-ge v8, v0, :cond_c

    .line 294
    move/from16 v8, p2

    .line 295
    :cond_c
    move/from16 v0, p3

    if-le v7, v0, :cond_d

    .line 296
    move/from16 v7, p3

    .line 297
    :cond_d
    if-eq v8, v7, :cond_9

    .line 298
    sub-int v13, v8, p2

    sub-int v14, v7, p2

    invoke-virtual {p0, v2, v12, v13, v14}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_5

    .line 233
    .end local v2    # "attributeKey":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v7    # "limit":I
    .end local v8    # "start":I
    .end local v12    # "value":Ljava/lang/Object;
    :cond_e
    return-void
.end method

.method constructor <init>([Ljava/text/AttributedCharacterIterator;)V
    .locals 11
    .param p1, "iterators"    # [Ljava/text/AttributedCharacterIterator;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "Iterators must not be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 79
    :cond_0
    array-length v9, p1

    if-nez v9, :cond_2

    .line 80
    const-string/jumbo v9, ""

    iput-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 75
    :cond_1
    return-void

    .line 84
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "counter":I
    :goto_0
    array-length v9, p1

    if-ge v2, v9, :cond_3

    .line 86
    aget-object v9, p1, v2

    invoke-direct {p0, v1, v9}, Ljava/text/AttributedString;->appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 91
    iget-object v9, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 94
    const/4 v7, 0x0

    .line 95
    .local v7, "offset":I
    const/4 v6, 0x0

    .line 97
    .local v6, "last":Ljava/util/Map;
    const/4 v2, 0x0

    .end local v6    # "last":Ljava/util/Map;
    :goto_1
    array-length v9, p1

    if-ge v2, v9, :cond_1

    .line 98
    aget-object v5, p1, v2

    .line 99
    .local v5, "iterator":Ljava/text/AttributedCharacterIterator;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v8

    .line 100
    .local v8, "start":I
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v3

    .line 101
    .local v3, "end":I
    move v4, v8

    .line 103
    .local v4, "index":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 104
    invoke-interface {v5, v4}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 106
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 108
    .local v0, "attrs":Ljava/util/Map;
    invoke-static {v6, v0}, Ljava/text/AttributedString;->mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 109
    sub-int v9, v4, v8

    add-int/2addr v9, v7

    invoke-direct {p0, v0, v9}, Ljava/text/AttributedString;->setAttributes(Ljava/util/Map;I)V

    .line 111
    :cond_4
    move-object v6, v0

    .line 112
    .local v6, "last":Ljava/util/Map;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v4

    goto :goto_2

    .line 114
    .end local v0    # "attrs":Ljava/util/Map;
    .end local v6    # "last":Ljava/util/Map;
    :cond_5
    sub-int v9, v3, v8

    add-int/2addr v7, v9

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private declared-synchronized addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 3
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    monitor-enter p0

    .line 404
    :try_start_0
    iget v2, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v2, :cond_0

    .line 405
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 409
    :cond_0
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    .line 410
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p4}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    .line 412
    .local v1, "endRunIndex":I
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 401
    return-void

    .end local v0    # "beginRunIndex":I
    .end local v1    # "endRunIndex":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginRunIndex"    # I
    .param p4, "endRunIndex"    # I

    .prologue
    .line 511
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 512
    const/4 v2, -0x1

    .line 513
    .local v2, "keyValueIndex":I
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    if-nez v6, :cond_0

    .line 514
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 515
    .local v4, "newRunAttributes":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 516
    .local v3, "newRunAttributeValues":Ljava/util/Vector;
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v6, v1

    .line 517
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v3, v6, v1

    .line 523
    .end local v3    # "newRunAttributeValues":Ljava/util/Vector;
    .end local v4    # "newRunAttributes":Ljava/util/Vector;
    :goto_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 525
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 526
    .local v5, "oldSize":I
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 528
    :try_start_0
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v5    # "oldSize":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    :cond_0
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    .line 530
    .restart local v5    # "oldSize":I
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Ljava/util/Vector;->setSize(I)V

    .line 532
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Ljava/util/Vector;->setSize(I)V

    goto :goto_2

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "oldSize":I
    :cond_1
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 509
    .end local v2    # "keyValueIndex":I
    :cond_2
    return-void
.end method

.method private final appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    .prologue
    .line 679
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    .line 680
    .local v1, "index":I
    invoke-interface {p2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    .local v0, "end":I
    move v2, v1

    .line 682
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 683
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-interface {p2, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 684
    invoke-interface {p2}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method private attributeValuesMatch(Ljava/util/Set;II)Z
    .locals 4
    .param p1, "attributes"    # Ljava/util/Set;
    .param p2, "runIndex1"    # I
    .param p3, "runIndex2"    # I

    .prologue
    .line 654
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 655
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 657
    .local v1, "key":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-direct {p0, v1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, p3}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    const/4 v2, 0x0

    return v2

    .line 661
    .end local v1    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 596
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private final createRunAttributeDataVectors()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 417
    new-array v2, v3, [I

    .line 418
    .local v2, "newRunStarts":[I
    new-array v1, v3, [Ljava/util/Vector;

    .line 419
    .local v1, "newRunAttributes":[Ljava/util/Vector;
    new-array v0, v3, [Ljava/util/Vector;

    .line 420
    .local v0, "newRunAttributeValues":[Ljava/util/Vector;
    iput-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 421
    iput-object v1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 422
    iput-object v0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 423
    iput v3, p0, Ljava/text/AttributedString;->runArraySize:I

    .line 424
    const/4 v3, 0x1

    iput v3, p0, Ljava/text/AttributedString;->runCount:I

    .line 415
    return-void
.end method

.method private final ensureRunBreak(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 429
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v0

    return v0
.end method

.method private final ensureRunBreak(IZ)I
    .locals 13
    .param p1, "offset"    # I
    .param p2, "copyAttrs"    # Z

    .prologue
    .line 444
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v10

    if-ne p1, v10, :cond_0

    .line 445
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    return v10

    .line 449
    :cond_0
    const/4 v9, 0x0

    .line 450
    .local v9, "runIndex":I
    :goto_0
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v9, v10, :cond_1

    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v9

    if-ge v10, p1, :cond_1

    .line 451
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 455
    :cond_1
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v9, v10, :cond_2

    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v9

    if-ne v10, p1, :cond_2

    .line 456
    return v9

    .line 461
    :cond_2
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    iget v11, p0, Ljava/text/AttributedString;->runArraySize:I

    if-ne v10, v11, :cond_4

    .line 462
    iget v10, p0, Ljava/text/AttributedString;->runArraySize:I

    add-int/lit8 v1, v10, 0xa

    .line 463
    .local v1, "newArraySize":I
    new-array v6, v1, [I

    .line 464
    .local v6, "newRunStarts":[I
    new-array v5, v1, [Ljava/util/Vector;

    .line 465
    .local v5, "newRunAttributes":[Ljava/util/Vector;
    new-array v3, v1, [Ljava/util/Vector;

    .line 466
    .local v3, "newRunAttributeValues":[Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v10, p0, Ljava/text/AttributedString;->runArraySize:I

    if-ge v0, v10, :cond_3

    .line 467
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v10, v10, v0

    aput v10, v6, v0

    .line 468
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v10, v10, v0

    aput-object v10, v5, v0

    .line 469
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v10, v10, v0

    aput-object v10, v3, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    :cond_3
    iput-object v6, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 472
    iput-object v5, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 473
    iput-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 474
    iput v1, p0, Ljava/text/AttributedString;->runArraySize:I

    .line 479
    .end local v0    # "i":I
    .end local v1    # "newArraySize":I
    .end local v3    # "newRunAttributeValues":[Ljava/util/Vector;
    .end local v5    # "newRunAttributes":[Ljava/util/Vector;
    .end local v6    # "newRunStarts":[I
    :cond_4
    const/4 v4, 0x0

    .line 480
    .local v4, "newRunAttributes":Ljava/util/Vector;
    const/4 v2, 0x0

    .line 482
    .local v2, "newRunAttributeValues":Ljava/util/Vector;
    if-eqz p2, :cond_6

    .line 483
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v11, v9, -0x1

    aget-object v8, v10, v11

    .line 484
    .local v8, "oldRunAttributes":Ljava/util/Vector;
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v11, v9, -0x1

    aget-object v7, v10, v11

    .line 485
    .local v7, "oldRunAttributeValues":Ljava/util/Vector;
    if-eqz v8, :cond_5

    .line 486
    invoke-virtual {v8}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "newRunAttributes":Ljava/util/Vector;
    check-cast v4, Ljava/util/Vector;

    .line 488
    :cond_5
    if-eqz v7, :cond_6

    .line 489
    invoke-virtual {v7}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "newRunAttributeValues":Ljava/util/Vector;
    check-cast v2, Ljava/util/Vector;

    .line 494
    .end local v7    # "oldRunAttributeValues":Ljava/util/Vector;
    .end local v8    # "oldRunAttributes":Ljava/util/Vector;
    :cond_6
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljava/text/AttributedString;->runCount:I

    .line 495
    iget v10, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v0, v10, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-le v0, v9, :cond_7

    .line 496
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    iget-object v11, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v12, v0, -0x1

    aget v11, v11, v12

    aput v11, v10, v0

    .line 497
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget-object v11, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    aput-object v11, v10, v0

    .line 498
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget-object v11, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    add-int/lit8 v12, v0, -0x1

    aget-object v11, v11, v12

    aput-object v11, v10, v0

    .line 495
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 500
    :cond_7
    iget-object v10, p0, Ljava/text/AttributedString;->runStarts:[I

    aput p1, v10, v9

    .line 501
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v4, v10, v9

    .line 502
    iget-object v10, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v2, v10, v9

    .line 504
    return v9
.end method

.method private declared-synchronized getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .locals 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 600
    :try_start_0
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v2, v3, p2

    .line 601
    .local v2, "currentRunAttributes":Ljava/util/Vector;
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v1, v3, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    .local v1, "currentRunAttributeValues":Ljava/util/Vector;
    if-nez v2, :cond_0

    monitor-exit p0

    .line 603
    return-object v4

    .line 605
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 606
    .local v0, "attributeIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 607
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    :cond_1
    monitor-exit p0

    .line 610
    return-object v4

    .end local v0    # "attributeIndex":I
    .end local v1    # "currentRunAttributeValues":Ljava/util/Vector;
    .end local v2    # "currentRunAttributes":Ljava/util/Vector;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .locals 8
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    const/4 v7, 0x0

    .line 616
    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v4

    .line 617
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/text/Annotation;

    if-eqz v5, :cond_5

    .line 619
    if-lez p3, :cond_1

    .line 620
    move v0, p2

    .line 621
    .local v0, "currIndex":I
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v5, p2

    .line 622
    .local v2, "runStart":I
    :goto_0
    if-lt v2, p3, :cond_0

    .line 623
    add-int/lit8 v5, v0, -0x1

    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 622
    if-eqz v5, :cond_0

    .line 624
    add-int/lit8 v0, v0, -0x1

    .line 625
    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v5, v0

    goto :goto_0

    .line 627
    :cond_0
    if-ge v2, p3, :cond_1

    .line 629
    return-object v7

    .line 632
    .end local v0    # "currIndex":I
    .end local v2    # "runStart":I
    :cond_1
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v3

    .line 633
    .local v3, "textLength":I
    if-ge p4, v3, :cond_5

    .line 634
    move v0, p2

    .line 635
    .restart local v0    # "currIndex":I
    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge p2, v5, :cond_2

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v6, p2, 0x1

    aget v1, v5, v6

    .line 636
    .local v1, "runLimit":I
    :goto_1
    if-gt v1, p4, :cond_4

    .line 637
    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p1, v5}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 636
    if-eqz v5, :cond_4

    .line 638
    add-int/lit8 v0, v0, 0x1

    .line 639
    iget v5, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v6, v0, 0x1

    aget v1, v5, v6

    goto :goto_1

    .line 635
    .end local v1    # "runLimit":I
    :cond_2
    move v1, v3

    .restart local v1    # "runLimit":I
    goto :goto_1

    .line 639
    :cond_3
    move v1, v3

    goto :goto_1

    .line 641
    :cond_4
    if-le v1, p4, :cond_5

    .line 643
    return-object v7

    .line 649
    .end local v0    # "currIndex":I
    .end local v1    # "runLimit":I
    .end local v3    # "textLength":I
    :cond_5
    return-object v4
.end method

.method private static mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .param p0, "last"    # Ljava/util/Map;
    .param p1, "attrs"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 721
    if-nez p0, :cond_1

    .line 722
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 724
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
    .param p1, "attrs"    # Ljava/util/Map;
    .param p2, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 694
    iget v6, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v6, :cond_0

    .line 695
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 698
    :cond_0
    invoke-direct {p0, p2, v7}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result v1

    .line 701
    .local v1, "index":I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    .local v5, "size":I
    if-lez v5, :cond_2

    .line 702
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v5}, Ljava/util/Vector;-><init>(I)V

    .line 703
    .local v3, "runAttrs":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    .line 704
    .local v4, "runValues":Ljava/util/Vector;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 706
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 707
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 709
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v3, v6, v1

    .line 713
    iget-object v6, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v4, v6, v1

    .line 693
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "runAttrs":Ljava/util/Vector;
    .end local v4    # "runValues":Ljava/util/Vector;
    .end local v5    # "size":I
    :cond_2
    return-void
.end method

.method private static final valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value1"    # Ljava/lang/Object;
    .param p1, "value2"    # Ljava/lang/Object;

    .prologue
    .line 666
    if-nez p0, :cond_1

    .line 667
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 3
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 322
    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    .line 323
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Can\'t add attribute to 0-length text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_1
    invoke-direct {p0, p1, p2, v1, v0}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 316
    return-void
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 2
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 348
    :cond_0
    if-ltz p3, :cond_1

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-le p4, v0, :cond_2

    .line 349
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_2
    if-ge p3, p4, :cond_1

    .line 352
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 342
    return-void
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .locals 6
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    if-nez p1, :cond_0

    .line 372
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 375
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v4

    if-le p3, v4, :cond_2

    .line 376
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid substring range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 375
    :cond_2
    if-gt p2, p3, :cond_1

    .line 378
    if-ne p2, p3, :cond_4

    .line 379
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 380
    return-void

    .line 381
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Can\'t add attribute to 0-length text"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 385
    :cond_4
    iget v4, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v4, :cond_5

    .line 386
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 390
    :cond_5
    invoke-direct {p0, p2}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v0

    .line 391
    .local v0, "beginRunIndex":I
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result v1

    .line 393
    .local v1, "endRunIndex":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 394
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 395
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 396
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0, v1}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 369
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_6
    return-void
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 3

    .prologue
    .line 548
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
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 563
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 1
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 583
    new-instance v0, Ljava/text/AttributedString$AttributedStringIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedStringIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method length()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
