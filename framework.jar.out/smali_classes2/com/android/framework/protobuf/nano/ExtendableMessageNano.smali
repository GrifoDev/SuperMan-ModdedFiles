.class public abstract Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<TM;>;>",
        "Lcom/android/framework/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/android/framework/protobuf/nano/ExtendableMessageNano;Lcom/android/framework/protobuf/nano/ExtendableMessageNano;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getExtension(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final hasExtension(Lcom/android/framework/protobuf/nano/Extension;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final setExtension(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    const/4 v4, 0x0

    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->remove(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v4, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    :cond_0
    :goto_0
    move-object v2, p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v3}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    :goto_1
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    new-instance v4, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v4, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;->setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v4

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    invoke-static {p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    sub-int v6, v1, v4

    invoke-virtual {p1, v4, v6}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v0

    new-instance v5, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-direct {v5, p2, v0}, Lcom/android/framework/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v6}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v6, v3, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/framework/protobuf/nano/FieldData;->addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V

    const/4 v6, 0x1

    return v6

    :cond_2
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v6, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v2

    goto :goto_0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
