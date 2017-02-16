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

    .prologue
    .line 48
    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0}, Ljava/util/OptionalInt;-><init>()V

    sput-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    .line 64
    iput v0, p0, Ljava/util/OptionalInt;->value:I

    .line 62
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    .line 90
    iput p1, p0, Ljava/util/OptionalInt;->value:I

    .line 87
    return-void
.end method

.method public static empty()Ljava/util/OptionalInt;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Ljava/util/OptionalInt;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 100
    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0, p0}, Ljava/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    if-ne p0, p1, :cond_0

    .line 205
    return v1

    .line 208
    :cond_0
    instance-of v3, p1, Ljava/util/OptionalInt;

    if-nez v3, :cond_1

    .line 209
    return v2

    :cond_1
    move-object v0, p1

    .line 212
    nop

    nop

    .line 213
    .local v0, "other":Ljava/util/OptionalInt;
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_4

    .line 214
    iget v3, p0, Ljava/util/OptionalInt;->value:I

    iget v4, v0, Ljava/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_3

    .line 213
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 214
    goto :goto_0

    .line 215
    :cond_4
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    iget-boolean v4, v0, Ljava/util/OptionalInt;->isPresent:Z

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0
.end method

.method public getAsInt()I
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 226
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
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 137
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 138
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .locals 1
    .param p1, "other"    # I

    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Ljava/util/OptionalInt;->value:I

    .end local p1    # "other":I
    :cond_0
    return p1
.end method

.method public orElseGet(Ljava/util/function/IntSupplier;)I
    .locals 1
    .param p1, "other"    # Ljava/util/function/IntSupplier;

    .prologue
    .line 162
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

    .prologue
    .line 182
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 183
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0

    .line 185
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 245
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

    .line 244
    :goto_0
    return-object v0

    .line 246
    :cond_0
    const-string/jumbo v0, "OptionalInt.empty"

    goto :goto_0
.end method
