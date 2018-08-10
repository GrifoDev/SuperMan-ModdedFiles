.class Lcom/google/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method private toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v2

    new-array v1, v2, [B

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-object v1
.end method


# virtual methods
.method public final clone()Lcom/google/protobuf/nano/FieldData;
    .locals 9

    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    :try_start_0
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    :goto_0
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v7, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v7, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v8, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, Lcom/google/protobuf/nano/MessageNano;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v7}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v7

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [B

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [[B

    if-eqz v7, :cond_5

    iget-object v6, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v6, [[B

    array-length v7, v6

    new-array v2, v7, [[B

    iput-object v2, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_2
    array-length v7, v6

    if-ge v4, v7, :cond_0

    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [Z

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [I

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [I

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [J

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [J

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [F

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [F

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [D

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [D

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [Lcom/google/protobuf/nano/MessageNano;

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [Lcom/google/protobuf/nano/MessageNano;

    array-length v7, v5

    new-array v1, v7, [Lcom/google/protobuf/nano/MessageNano;

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_3
    array-length v7, v5

    if-ge v4, v7, :cond_0

    aget-object v7, v5, v4

    invoke-virtual {v7}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v7

    aput-object v7, v1, v4
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nano/UnknownFieldData;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    if-ne p1, p0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    instance-of v2, p1, Lcom/google/protobuf/nano/FieldData;

    if-nez v2, :cond_1

    return v4

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/nano/FieldData;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, v2, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2

    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    return v2

    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [F

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    return v2

    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [D

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [D

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    return v2

    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Z

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    return v2

    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v1, 0x11

    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit16 v1, v2, 0x20f

    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Lcom/google/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/UnknownFieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0
.end method
