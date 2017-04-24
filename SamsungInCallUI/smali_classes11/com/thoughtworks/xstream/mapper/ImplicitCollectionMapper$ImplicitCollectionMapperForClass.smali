.class Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
.super Ljava/lang/Object;
.source "ImplicitCollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImplicitCollectionMapperForClass"
.end annotation


# instance fields
.field private definedIn:Ljava/lang/Class;

.field private fieldNameToDef:Ljava/util/Map;

.field private itemFieldNameToDef:Ljava/util/Map;

.field private namedItemTypeToDef:Ljava/util/Map;

.field final synthetic this$0:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;Ljava/lang/Class;)V
    .locals 1

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->this$0:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->namedItemTypeToDef:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->itemFieldNameToDef:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->fieldNameToDef:Ljava/util/Map;

    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->definedIn:Ljava/lang/Class;

    return-void
.end method

.method private getImplicitCollectionDefByItemFieldName(Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->itemFieldNameToDef:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->this$0:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->definedIn:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    # invokes: Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
    invoke-static {v3, v4}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->access$000(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->getImplicitCollectionDefByItemFieldName(Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->fieldNameToDef:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->namedItemTypeToDef:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->createNamedItemType()Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemFieldName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->itemFieldNameToDef:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->namedItemTypeToDef:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    iget-object v5, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->namedItemTypeToDef:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;

    const-class v5, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-ne p1, v5, :cond_2

    move-object v4, v0

    :cond_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getFieldName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_2
    iget-object v5, v1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemFieldName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getFieldName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemType()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemType()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    move-object v4, v0

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->this$0:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iget-object v6, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->definedIn:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    # invokes: Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
    invoke-static {v5, v6}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->access$000(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, p1, p2}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getImplicitCollectionDefForFieldName(Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .locals 4

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->fieldNameToDef:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->this$0:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->definedIn:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    # invokes: Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
    invoke-static {v2, v3}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->access$000(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->getImplicitCollectionDefForFieldName(Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v2

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemTypeForItemFieldName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->getImplicitCollectionDefByItemFieldName(Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->getItemType()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->this$0:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->definedIn:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    # invokes: Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->getMapper(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;
    invoke-static {v2, v3}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->access$000(Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMapperForClass;->getItemTypeForItemFieldName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
