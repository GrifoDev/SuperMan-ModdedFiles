.class Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;
.super Ljava/lang/Object;
.source "SerializableConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

.field final synthetic val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

.field final synthetic val$currentType:[Ljava/lang/Class;

.field final synthetic val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Objects are not allowed to call ObjectInputStream.close() from readObject()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public defaultReadObject()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v5, "Expected <default/> element in readObject() stream"

    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v5, v5, v8

    invoke-interface {v4, v5, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v4, v5}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    :goto_2
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v4, v5, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v6, v6, v8

    invoke-interface {v4, v5, v1, v3, v6}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_2
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v7, v7, v8

    invoke-interface {v5, v6, v1, v7}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto/16 :goto_0
.end method

.method public readFieldsFromStream()Ljava/util/Map;
    .locals 11

    const/4 v10, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fields"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "field"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v8, "Expected <field/> element inside <field/>"

    invoke-direct {v7, v8}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    const-string v8, "name"

    invoke-interface {v7, v8}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    const-string v9, "class"

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v7, v8, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v7, v7, v10

    invoke-static {v7}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v4

    :goto_1
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v8, v8, v10

    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v9}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v8, v8, v10

    invoke-interface {v7, v8, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v8, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v7, v8}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v7, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    :goto_2
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v7, v8, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v3}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v7, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_2

    :cond_5
    new-instance v7, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v8, "Expected <fields/> or <default/> element when calling ObjectInputStream.readFields()"

    invoke-direct {v7, v8}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-object v2
.end method

.method public readFromStream()Ljava/lang/Object;
    .locals 4

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v2, v3}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-object v1
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;Ljava/io/ObjectInputValidation;)V

    invoke-interface {v0, v1, p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->addCompletionCallback(Ljava/lang/Runnable;I)V

    return-void
.end method
