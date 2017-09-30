.class Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

.field final synthetic val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

.field final synthetic val$defaultFieldDefinition:Ljava/util/Map;

.field final synthetic val$fields:Ljava/util/List;

.field final synthetic val$source:Ljava/lang/Object;

.field final synthetic val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;Ljava/util/List;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/util/Map;)V
    .locals 12

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$fields:Ljava/util/List;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$source:Ljava/lang/Object;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$defaultFieldDefinition:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;

    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$source:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    instance-of v1, v1, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-eq v1, v2, :cond_1

    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    check-cast v1, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    iget-object v2, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;->registerImplicit(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Collection;

    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v11}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getKeyFieldName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v8, v1

    :goto_1
    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ArrayIterator;

    iget-object v2, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/util/ArrayIterator;-><init>(Ljava/lang/Object;)V

    move-object v9, v1

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    const-class v4, Ljava/lang/Object;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v2, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    iget-object v5, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v9, v1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v9, v1

    goto :goto_2

    :cond_5
    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v9, v1

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_8

    invoke-interface {v11}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v1

    :goto_4
    check-cast v6, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-virtual {p0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-virtual {p0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v2, Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-interface {v11}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v11}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v11}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_a
    iget-object v2, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->type:Ljava/lang/Class;

    iget-object v5, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    iget-object v6, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    if-eqz p2, :cond_4

    :goto_1
    invoke-static {v1, p2, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz p5, :cond_2

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, p3}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v2, "class"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v2, v1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$defaultFieldDefinition:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p4, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "defined-in"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, p4}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p4, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-virtual {v1, v2, p5, v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->marshallField(Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void

    :cond_3
    move-object v0, p3

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$source:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1
.end method

.method writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    invoke-static {p3, v0, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0
.end method
