.class public final Ljava/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final EMPTY:Ljava/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0}, Ljava/util/OptionalInt;-><init>()V

    sput-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    iput v0, p0, Ljava/util/OptionalInt;->value:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    iput p1, p0, Ljava/util/OptionalInt;->value:I

    return-void
.end method

.method public static empty()Ljava/util/OptionalInt;
    .locals 1

    sget-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Ljava/util/OptionalInt;
    .locals 1

    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0, p0}, Ljava/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/util/OptionalInt;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    nop

    nop

    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_4

    iget v3, p0, Ljava/util/OptionalInt;->value:I

    iget v4, v0, Ljava/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    iget-boolean v4, v0, Ljava/util/OptionalInt;->isPresent:Z

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0
.end method

.method public getAsInt()I
    .locals 2

    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ifPresent(Ljava/util/function/IntConsumer;)V
    .locals 1

    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .locals 1

    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Ljava/util/OptionalInt;->value:I

    :cond_0
    return p1
.end method

.method public orElseGet(Ljava/util/function/IntSupplier;)I
    .locals 1

    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    goto :goto_0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OptionalInt[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Ljava/util/OptionalInt;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "OptionalInt.empty"

    goto :goto_0
.end method
