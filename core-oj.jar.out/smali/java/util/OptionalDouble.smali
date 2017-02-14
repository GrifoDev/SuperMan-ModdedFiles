.class public final Ljava/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final EMPTY:Ljava/util/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/OptionalDouble;

    invoke-direct {v0}, Ljava/util/OptionalDouble;-><init>()V

    sput-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-void
.end method

.method private constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    iput-wide p1, p0, Ljava/util/OptionalDouble;->value:D

    return-void
.end method

.method public static empty()Ljava/util/OptionalDouble;
    .locals 1

    sget-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public static of(D)Ljava/util/OptionalDouble;
    .locals 2

    new-instance v0, Ljava/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Ljava/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/util/OptionalDouble;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    nop

    nop

    iget-boolean v3, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_4

    iget-wide v4, p0, Ljava/util/OptionalDouble;->value:D

    iget-wide v6, v0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Ljava/util/OptionalDouble;->isPresent:Z

    iget-boolean v4, v0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0
.end method

.method public getAsDouble()D
    .locals 2

    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ifPresent(Ljava/util/function/DoubleConsumer;)V
    .locals 2

    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public orElse(D)D
    .locals 1

    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Ljava/util/OptionalDouble;->value:D

    :cond_0
    return-wide p1
.end method

.method public orElseGet(Ljava/util/function/DoubleSupplier;)D
    .locals 2

    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TX;>;)D^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OptionalDouble[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "OptionalDouble.empty"

    goto :goto_0
.end method
