.class public Landroid/os/HidlSupport;
.super Ljava/lang/Object;
.source "HidlSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x0

    if-ne p0, p1, :cond_0

    const/4 v8, 0x1

    return v8

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v8

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v1, v6, :cond_3

    return v8

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    if-eq v2, v9, :cond_4

    return v8

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    return v8

    :cond_5
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, [Ljava/lang/Object;

    array-length v9, v0

    array-length v10, v5

    if-ne v9, v10, :cond_6

    array-length v9, v0

    invoke-static {v8, v9}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v8

    new-instance v9, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$3;

    invoke-direct {v9, v0, v5}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v8

    :cond_6
    return v8

    :cond_7
    instance-of v9, p0, Ljava/util/List;

    if-eqz v9, :cond_9

    move-object v4, p0

    check-cast v4, Ljava/util/List;

    move-object v7, p1

    check-cast v7, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_8

    return v8

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$2;

    invoke-direct {v9, v3}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    return v8

    :cond_9
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    return v8
.end method

.method public static deepHashCode(Ljava/lang/Object;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/os/HidlSupport;->primitiveArrayHashCode(Ljava/lang/Object;)I

    move-result v2

    return v2

    :cond_1
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;

    invoke-direct {v3}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    return v2

    :cond_2
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_3

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$1;

    invoke-direct {v3}, Landroid/os/-$Lambda$G_Gcg0ia_B_NRvJUIh_Nis__dWA$1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    return v2

    :cond_3
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    return v2
.end method

.method static synthetic lambda$-android_os_HidlSupport_2349([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 2

    aget-object v0, p0, p2

    aget-object v1, p1, p2

    invoke-static {v0, v1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_os_HidlSupport_2772(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_os_HidlSupport_3440(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_os_HidlSupport_3646(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static primitiveArrayHashCode(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    return v1

    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    return v1

    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    return v1

    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    return v1

    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    return v1

    :cond_4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    return v1

    :cond_5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    return v1

    :cond_6
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    return v1

    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method private static throwErrorIfUnsupportedType(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot check equality on collections other than lists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot check equality on maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
