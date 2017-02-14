.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Landroid/icu/text/Collator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "rules == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    new-instance v1, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v1, p1}, Landroid/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/text/ParseException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/text/ParseException;

    throw v0

    :cond_1
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private collAsICU()Landroid/icu/text/RuleBasedCollator;
    .locals 1

    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Landroid/icu/text/CollationElementIterator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/text/CharacterIterator;)Landroid/icu/text/CollationElementIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Landroid/icu/text/CollationElementIterator;)V

    return-object v0
.end method

.method public declared-synchronized getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Llibcore/icu/CollationKeyICU;

    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1, p1}, Landroid/icu/text/Collator;->getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Llibcore/icu/CollationKeyICU;-><init>(Ljava/lang/String;Landroid/icu/text/CollationKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->hashCode()I

    move-result v0

    return v0
.end method
