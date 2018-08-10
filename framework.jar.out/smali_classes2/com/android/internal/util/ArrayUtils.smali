.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    array-length v0, p1

    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    aput-object p2, v1, v0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static appendInt([II)[I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static appendInt([IIZ)[I
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    return-object v3

    :cond_0
    array-length v0, p0

    if-nez p2, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v3, p0, v1

    if-ne v3, p1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    aput p1, v2, v0

    return-object v2
.end method

.method public static appendLong([JJ)[J
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [J

    aput-wide p1, v3, v6

    return-object v3

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-wide v4, p0, v1

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [J

    invoke-static {p0, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    aput-wide p1, v2, v0

    return-object v2
.end method

.method public static cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :cond_0
    return-object v0
.end method

.method public static cloneOrNull([J)[J
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :cond_0
    return-object v0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-char v0, p0, v1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static contains([II)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v0, p0, v1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static contains([JJ)Z
    .locals 7

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-wide v0, p0, v2

    cmp-long v5, v0, p1

    if-nez v5, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static containsAll([C[C)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C[C)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-char v0, p1, v1

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([CC)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public static containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static convertToIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    :cond_2
    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method public static equals([B[BI)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-gez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    if-ne p0, p1, :cond_1

    return v4

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    return v3

    :cond_3
    array-length v1, p0

    if-lt v1, p2, :cond_2

    array-length v1, p1

    if-lt v1, p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v4
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v2, -0x1

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static newUnpaddedByteArray(I)[B
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static newUnpaddedCharArray(I)[C
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static newUnpaddedIntArray(I)[I
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static newUnpaddedLongArray(I)[J
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v6

    :cond_2
    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_3

    move v4, v5

    :goto_1
    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    xor-int/lit8 v4, v0, 0x1

    return v4
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, p1, v0

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static removeInt([II)[I
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v3, p0, v1

    if-ne v3, p1, :cond_3

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    if-lez v1, :cond_1

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public static removeLong([JJ)[J
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-wide v4, p0, v1

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [J

    if-lez v1, :cond_1

    invoke-static {p0, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p0, v1

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [Ljava/lang/String;

    if-lez v1, :cond_1

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public static size([Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0
.end method

.method public static total([J)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v4, 0x0

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v2, p0, v4

    add-long/2addr v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    array-length v0, p0

    if-ne v0, p1, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-le v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    if-lt v1, v2, :cond_4

    :cond_3
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    sub-int v4, v3, v1

    return v4
.end method
