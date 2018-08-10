.class public abstract Lcom/android/framework/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[BII)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[BII)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v0

    throw v0
.end method

.method public static final messageNanoEquals(Lcom/android/framework/protobuf/nano/MessageNano;Lcom/android/framework/protobuf/nano/MessageNano;)Z
    .locals 6

    const/4 v5, 0x0

    if-ne p0, p1, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    return v5

    :cond_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    if-eq v3, v2, :cond_4

    return v5

    :cond_4
    new-array v0, v2, [B

    new-array v1, v2, [B

    invoke-static {p0, v0, v5, v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    invoke-static {p1, v1, v5, v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3
.end method

.method public static final toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V
    .locals 4

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    new-array v0, v1, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public abstract mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
