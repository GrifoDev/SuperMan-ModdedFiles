.class public final Ljava/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# static fields
.field private static final EMPTY:Ljava/util/OptionalLong;


# instance fields
.field private final isPresent:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/OptionalLong;

    invoke-direct {v0}, Ljava/util/OptionalLong;-><init>()V

    sput-object v0, Ljava/util/OptionalLong;->EMPTY:Ljava/util/OptionalLong;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/OptionalLong;->value:J

    .line 62
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    .line 89
    iput-wide p1, p0, Ljava/util/OptionalLong;->value:J

    .line 87
    return-void
.end method

.method public static empty()Ljava/util/OptionalLong;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ljava/util/OptionalLong;->EMPTY:Ljava/util/OptionalLong;

    return-object v0
.end method

.method public static of(J)Ljava/util/OptionalLong;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 99
    new-instance v0, Ljava/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Ljava/util/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    if-ne p0, p1, :cond_0

    .line 204
    return v1

    .line 207
    :cond_0
    instance-of v3, p1, Ljava/util/OptionalLong;

    if-nez v3, :cond_1

    .line 208
    return v2

    :cond_1
    move-object v0, p1

    .line 211
    nop

    nop

    .line 212
    .local v0, "other":Ljava/util/OptionalLong;
    iget-boolean v3, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_4

    .line 213
    iget-wide v4, p0, Ljava/util/OptionalLong;->value:J

    iget-wide v6, v0, Ljava/util/OptionalLong;->value:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 212
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 213
    goto :goto_0

    .line 214
    :cond_4
    iget-boolean v3, p0, Ljava/util/OptionalLong;->isPresent:Z

    iget-boolean v4, v0, Ljava/util/OptionalLong;->isPresent:Z

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0
.end method

.method public getAsLong()J
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ifPresent(Ljava/util/function/LongConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 136
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 137
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 135
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public orElse(J)J
    .locals 1
    .param p1, "other"    # J

    .prologue
    .line 147
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Ljava/util/OptionalLong;->value:J

    .end local p1    # "other":J
    :cond_0
    return-wide p1
.end method

.method public orElseGet(Ljava/util/function/LongSupplier;)J
    .locals 2
    .param p1, "other"    # Ljava/util/function/LongSupplier;

    .prologue
    .line 161
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    goto :goto_0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TX;>;)J^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 182
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    return-wide v0

    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 244
    const-string/jumbo v0, "OptionalLong[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Ljava/util/OptionalLong;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 245
    :cond_0
    const-string/jumbo v0, "OptionalLong.empty"

    goto :goto_0
.end method
