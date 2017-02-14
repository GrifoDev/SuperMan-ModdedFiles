.class public Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;
.super Ljava/lang/Object;
.source "EncodedByteArrayConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;
.implements Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# static fields
.field private static final base64:Lcom/thoughtworks/xstream/core/util/Base64Encoder;

.field private static final byteConverter:Lcom/thoughtworks/xstream/converters/basic/ByteConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->base64:Lcom/thoughtworks/xstream/core/util/Base64Encoder;

    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->byteConverter:Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private unmarshalIndividualByteElements(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    sget-object v6, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->byteConverter:Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [B

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v5
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->base64:Lcom/thoughtworks/xstream/core/util/Base64Encoder;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->base64:Lcom/thoughtworks/xstream/core/util/Base64Encoder;

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->unmarshalIndividualByteElements(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
