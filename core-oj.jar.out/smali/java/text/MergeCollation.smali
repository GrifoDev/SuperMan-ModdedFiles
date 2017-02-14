.class final Ljava/text/MergeCollation;
.super Ljava/lang/Object;
.source "MergeCollation.java"


# instance fields
.field private final BITARRAYMASK:B

.field private final BYTEMASK:I

.field private final BYTEPOWER:I

.field private transient excess:Ljava/lang/StringBuffer;

.field private transient lastEntry:Ljava/text/PatternEntry;

.field patterns:Ljava/util/ArrayList;

.field private transient saveEntry:Ljava/text/PatternEntry;

.field private transient statusArray:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    iput-object v2, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    iput-object v2, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    const/4 v1, 0x1

    iput-byte v1, p0, Ljava/text/MergeCollation;->BITARRAYMASK:B

    const/4 v1, 0x3

    iput v1, p0, Ljava/text/MergeCollation;->BYTEPOWER:I

    const/4 v1, 0x7

    iput v1, p0, Ljava/text/MergeCollation;->BYTEMASK:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/text/MergeCollation;->setPattern(Ljava/lang/String;)V

    return-void
.end method

.method private final findLastEntry(Ljava/text/PatternEntry;Ljava/lang/StringBuffer;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget v4, p1, Ljava/text/PatternEntry;->strength:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_4

    const/4 v3, -0x1

    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shr-int/lit8 v2, v4, 0x3

    iget-object v4, p0, Ljava/text/MergeCollation;->statusArray:[B

    aget-byte v4, v4, v2

    iget-object v5, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit8 v5, v5, 0x7

    shl-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    :cond_1
    :goto_0
    if-ne v3, v8, :cond_3

    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "couldn\'t find last entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_2
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v3, 0x1

    return v4

    :cond_4
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_5

    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    iget-object v4, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v5, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v6, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v5, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-ne v1, v8, :cond_7

    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "couldn\'t find: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v1, 0x1

    return v4
.end method

.method private final findLastWithNoExtension(I)Ljava/text/PatternEntry;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    iget-object v1, v0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private final fixEntry(Ljava/text/PatternEntry;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    iget-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    if-eqz v7, :cond_1

    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v8, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v8, v8, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    iget-object v8, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v8, v8, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    if-eq v7, v10, :cond_0

    new-instance v7, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The entries "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " are adjacent in the rules, but have conflicting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "strengths: A character can\'t be unequal to itself."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    if-eq v7, v10, :cond_4

    const/4 v4, -0x1

    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v12, :cond_7

    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shr-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Ljava/text/MergeCollation;->statusArray:[B

    aget-byte v0, v7, v6

    and-int/lit8 v7, v1, 0x7

    shl-int v7, v12, v7

    int-to-byte v5, v7

    if-eqz v0, :cond_6

    and-int v7, v0, v5

    if-eqz v7, :cond_6

    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    :goto_0
    if-eq v4, v11, :cond_2

    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v7, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v8, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-direct {p0, v7, v8}, Ljava/text/MergeCollation;->findLastEntry(Ljava/text/PatternEntry;Ljava/lang/StringBuffer;)I

    move-result v3

    iget-object v7, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v3, v7, :cond_3

    iget-object v7, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    iput-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    const/4 v2, 0x0

    :cond_3
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v3, v7, :cond_8

    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    iput-object p1, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    :cond_5
    return-void

    :cond_6
    iget-object v7, p0, Ljava/text/MergeCollation;->statusArray:[B

    or-int v8, v0, v5

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    goto :goto_0

    :cond_7
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0

    :cond_8
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/text/PatternEntry$Parser;

    invoke-direct {v1, p1}, Ljava/text/PatternEntry$Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/text/PatternEntry$Parser;->next()Ljava/text/PatternEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Ljava/text/MergeCollation;->fixEntry(Ljava/text/PatternEntry;)V

    invoke-virtual {v1}, Ljava/text/PatternEntry$Parser;->next()Ljava/text/PatternEntry;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public emitPattern()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/text/MergeCollation;->emitPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public emitPattern(Z)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemAt(I)Ljava/text/PatternEntry;
    .locals 1

    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/text/MergeCollation;->getPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPattern(Z)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    iget-object v7, v0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    add-int/lit8 v7, v2, -0x1

    invoke-direct {p0, v7}, Ljava/text/MergeCollation;->findLastWithNoExtension(I)Ljava/text/PatternEntry;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_2
    if-ltz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/PatternEntry;

    invoke-virtual {v6, v5, v8, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, v5, v8, p1, v9}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    add-int/lit8 v7, v2, -0x1

    invoke-direct {p0, v7}, Ljava/text/MergeCollation;->findLastWithNoExtension(I)Ljava/text/PatternEntry;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_3
    if-ltz v3, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/PatternEntry;

    invoke-virtual {v6, v5, v8, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Ljava/text/MergeCollation;->addPattern(Ljava/lang/String;)V

    return-void
.end method
