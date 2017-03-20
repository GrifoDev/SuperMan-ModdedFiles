.class Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;
.super Ljava/lang/Object;
.source "SerializableConverter.java"

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

    .prologue
    .line 132
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

    .prologue
    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Objects are not allowed to call ObjectOutputStream.close() from writeObject()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public defaultWriteObject()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 178
    const/4 v8, 0x0

    .line 180
    .local v8, "writtenDefaultFields":Z
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v9, v9, v13

    invoke-static {v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v6

    .line 182
    .local v6, "objectStreamClass":Ljava/io/ObjectStreamClass;
    if-nez v6, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v4

    .line 187
    .local v4, "fields":[Ljava/io/ObjectStreamField;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v4

    if-ge v5, v9, :cond_7

    .line 188
    aget-object v3, v4, v5

    .line 189
    .local v3, "field":Ljava/io/ObjectStreamField;
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v10, v10, v13

    iget-object v11, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    # invokes: Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->readField(Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v9, v3, v10, v11}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->access$000(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 190
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_4

    .line 191
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    aget-boolean v9, v9, v13

    if-nez v9, :cond_2

    .line 192
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v10, v10, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v11, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v11, v11, v13

    invoke-interface {v10, v11}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 193
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v13

    .line 195
    :cond_2
    if-nez v8, :cond_3

    .line 196
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v10, "default"

    invoke-interface {v9, v10}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 197
    const/4 v8, 0x1

    .line 199
    :cond_3
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v9, v9, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v10, v10, v13

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 187
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 203
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 204
    .local v0, "actualType":Ljava/lang/Class;
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v10, v10, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v11, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 206
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v9, v9, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 207
    .local v2, "defaultType":Ljava/lang/Class;
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 208
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v9, v9, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v10, "class"

    invoke-interface {v9, v10}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "attributeName":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 210
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v10, v10, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v10, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v1, v10}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v1    # "attributeName":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v9, v7}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 216
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v9}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_2

    .line 219
    .end local v0    # "actualType":Ljava/lang/Class;
    .end local v2    # "defaultType":Ljava/lang/Class;
    .end local v3    # "field":Ljava/io/ObjectStreamField;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_7
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    aget-boolean v9, v9, v13

    if-eqz v9, :cond_8

    if-nez v8, :cond_8

    .line 220
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v10, "default"

    invoke-interface {v9, v10}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 221
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v9}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0

    .line 222
    :cond_8
    if-eqz v8, :cond_0

    .line 223
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v9}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 229
    return-void
.end method

.method public writeFieldsToStream(Ljava/util/Map;)V
    .locals 10
    .param p1, "fields"    # Ljava/util/Map;

    .prologue
    const/4 v9, 0x0

    .line 146
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v4

    .line 148
    .local v4, "objectStreamClass":Ljava/io/ObjectStreamClass;
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v7, "default"

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 151
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v7, v7, v9

    invoke-interface {v6, v7, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 154
    invoke-virtual {v4, v3}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v1

    .line 155
    .local v1, "field":Ljava/io/ObjectStreamField;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 156
    .local v5, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 157
    new-instance v6, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " may not write a field named \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    :cond_1
    if-eqz v5, :cond_0

    .line 161
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_2

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_2

    .line 165
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v7, "class"

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "attributeName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 167
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v0    # "attributeName":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v6, v5}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 171
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0

    .line 174
    .end local v1    # "field":Ljava/io/ObjectStreamField;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 175
    return-void
.end method

.method public writeToStream(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 143
    :goto_0
    return-void

    .line 139
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

    .line 140
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0
.end method
