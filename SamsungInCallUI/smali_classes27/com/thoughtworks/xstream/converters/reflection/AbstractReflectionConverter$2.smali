.class Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;
.super Ljava/lang/Object;
.source "AbstractReflectionConverter.java"


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
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$fields:Ljava/util/List;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$source:Ljava/lang/Object;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$defaultFieldDefinition:Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$source:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v23

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    instance-of v2, v2, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    move-object/from16 v24, v0

    check-cast v24, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;->registerImplicit(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    instance-of v0, v2, Ljava/util/Collection;

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    instance-of v0, v2, Ljava/util/Map;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-interface/range {v23 .. v23}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getKeyFieldName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v18

    if-eqz v18, :cond_3

    new-instance v22, Lcom/thoughtworks/xstream/core/util/ArrayIterator;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/core/util/ArrayIterator;-><init>(Ljava/lang/Object;)V

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    :cond_3
    if-eqz v19, :cond_4

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    goto :goto_2

    :cond_4
    if-eqz v20, :cond_5

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    goto :goto_2

    :cond_5
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    goto :goto_2

    :cond_6
    if-eqz v20, :cond_8

    invoke-interface/range {v23 .. v23}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface/range {v23 .. v23}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v15

    :goto_4
    move-object v14, v7

    check-cast v14, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v15, v3}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v3, Ljava/util/Map$Entry;

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_8
    invoke-interface/range {v23 .. v23}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface/range {v23 .. v23}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface/range {v23 .. v23}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->type:Ljava/lang/Class;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 9

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    if-eqz p2, :cond_4

    :goto_1
    invoke-static {v6, p2, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz p5, :cond_2

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v6, p3}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v6, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v6, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v7, "class"

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v6, v1, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$defaultFieldDefinition:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, p4, :cond_1

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v7, "defined-in"

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v7, p4}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v6, p4, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-virtual {v6, v7, p5, v4}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->marshallField(Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    :cond_2
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void

    :cond_3
    move-object v0, p3

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->val$source:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1
.end method

.method writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    invoke-static {p3, v0, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0
.end method
