.class Ljava/util/RegularEnumSet;
.super Ljava/util/EnumSet;
.source "RegularEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/RegularEnumSet$EnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f586fc77eb0d07eL


# instance fields
.field private elements:J


# direct methods
.method static synthetic -get0(Ljava/util/RegularEnumSet;)J
    .locals 2

    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    return-wide v0
.end method

.method static synthetic -set0(Ljava/util/RegularEnumSet;J)J
    .locals 1

    iput-wide p1, p0, Ljava/util/RegularEnumSet;->elements:J

    return-wide p1
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[",
            "Ljava/lang/Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->typeCheck(Ljava/lang/Enum;)V

    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-wide/16 v6, 0x1

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method addAll()V
    .locals 4

    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    neg-int v0, v0

    const-wide/16 v2, -0x1

    ushr-long v0, v2, v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v4, p1, Ljava/util/RegularEnumSet;

    if-nez v4, :cond_0

    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    iget-object v4, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    or-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, -0x1

    ushr-long v0, v2, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    return-void
.end method

.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    return-void
.end method

.method complement()V
    .locals 6

    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    not-long v0, v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-object v2, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v2, v2

    neg-int v2, v2

    const-wide/16 v4, -0x1

    ushr-long v2, v4, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-wide/16 v6, 0x1

    shl-long v4, v6, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    instance-of v1, p1, Ljava/util/RegularEnumSet;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    move-result v1

    return v1

    :cond_1
    iget-wide v2, v0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Ljava/util/RegularEnumSet;

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    iget-object v3, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v4, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v3, v4, :cond_2

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-wide v4, v0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/RegularEnumSet$EnumSetIterator;

    invoke-direct {v0, p0}, Ljava/util/RegularEnumSet$EnumSetIterator;-><init>(Ljava/util/RegularEnumSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 10

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v4, v5, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-wide/16 v8, 0x1

    shl-long v6, v8, v6

    not-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v4, p1, Ljava/util/RegularEnumSet;

    if-nez v4, :cond_0

    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    iget-object v4, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v4, v5, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    not-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const-wide/16 v6, 0x0

    instance-of v4, p1, Ljava/util/RegularEnumSet;

    if-nez v4, :cond_0

    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    return v4

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/util/RegularEnumSet;

    iget-object v4, v1, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v4, v5, :cond_2

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-wide v6, p0, Ljava/util/RegularEnumSet;->elements:J

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v1, Ljava/util/RegularEnumSet;->elements:J

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 2

    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method
