.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration$MarshalerStreamConfiguration;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableStreamConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerStreamConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/StreamConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration$MarshalerStreamConfiguration;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x10

    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/StreamConfiguration;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->isInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 45
    check-cast p1, Landroid/hardware/camera2/params/StreamConfiguration;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration$MarshalerStreamConfiguration;->marshal(Landroid/hardware/camera2/params/StreamConfiguration;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/StreamConfiguration;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 55
    .local v0, "format":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 56
    .local v3, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 57
    .local v1, "height":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 59
    .local v2, "input":Z
    :goto_0
    new-instance v4, Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    return-object v4

    .line 57
    .end local v2    # "input":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "input":Z
    goto :goto_0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration$MarshalerStreamConfiguration;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/StreamConfiguration;

    move-result-object v0

    return-object v0
.end method
