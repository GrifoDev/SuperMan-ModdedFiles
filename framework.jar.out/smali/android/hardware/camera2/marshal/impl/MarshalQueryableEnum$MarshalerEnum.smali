.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 1
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    .local p1, "this$0":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 55
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mClass:Ljava/lang/Class;

    .line 52
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    iget v0, p0, Landroid/hardware/camera2/marshal/Marshaler;->mNativeType:I

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->getPrimitiveTypeSize(I)I

    move-result v0

    return v0
.end method

.method public marshal(Ljava/lang/Enum;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    .local p1, "value":Ljava/lang/Enum;, "TT;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-static {p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->-wrap0(Ljava/lang/Enum;)I

    move-result v0

    .line 62
    .local v0, "enumValue":I
    iget v1, p0, Landroid/hardware/camera2/marshal/Marshaler;->mNativeType:I

    if-ne v1, v3, :cond_0

    .line 63
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    :goto_0
    return-void

    .line 64
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/marshal/Marshaler;->mNativeType:I

    if-nez v1, :cond_3

    .line 65
    if-ltz v0, :cond_1

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 67
    const-string/jumbo v2, "Enum value %x too large to fit into unsigned byte"

    .line 66
    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 66
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2
    int-to-byte v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 71
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 59
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->marshal(Ljava/lang/Enum;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Enum;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    iget v1, p0, Landroid/hardware/camera2/marshal/Marshaler;->mNativeType:I

    packed-switch v1, :pswitch_data_0

    .line 88
    new-instance v1, Ljava/lang/AssertionError;

    .line 89
    const-string/jumbo v2, "Unexpected native type; impossible since its not supported"

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 92
    .local v0, "enumValue":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->-wrap1(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v1

    return-object v1

    .line 85
    .end local v0    # "enumValue":I
    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 86
    .restart local v0    # "enumValue":I
    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 76
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
