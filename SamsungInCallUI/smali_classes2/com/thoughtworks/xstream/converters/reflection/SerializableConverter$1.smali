.class Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

.field final synthetic val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

.field final synthetic val$currentType:[Ljava/lang/Class;

.field final synthetic val$source:Ljava/lang/Object;

.field final synthetic val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

.field final synthetic val$writtenClassWrapper:[Z


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;[Ljava/lang/Class;Ljava/lang/Object;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    iput-object p6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Objects are not allowed to call ObjectOutputStream.close() from writeObject()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public defaultWriteObject()V
    .locals 12

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_7

    aget-object v5, v4, v0

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    invoke-static {v6, v5, v7, v8}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->access$000(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    aget-boolean v7, v7, v1

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v8, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v9, v9, v1

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    aput-boolean v3, v7, v1

    :cond_2
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v7, "default"

    invoke-interface {v2, v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    move v2, v3

    :cond_3
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v8, v8, v1

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v9, v9, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v8, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v8, "class"

    invoke-interface {v5, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v9, v9, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v9, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v5, v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    return-void
.end method

.method public writeFieldsToStream(Ljava/util/Map;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v2, "default"

    invoke-interface {v0, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v4, v4, v8

    invoke-interface {v3, v4, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " may not write a field named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v3, "class"

    invoke-interface {v0, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v0, v4}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method

.method public writeToStream(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0
.end method
