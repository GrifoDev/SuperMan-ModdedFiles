.class public Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;


# instance fields
.field protected final aliasToFieldMap:Ljava/util/Map;

.field protected final fieldToAliasMap:Ljava/util/Map;

.field protected final fieldsToOmit:Ljava/util/Set;

.field protected final unknownFieldsToIgnore:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldToAliasMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->aliasToFieldMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldsToOmit:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->unknownFieldsToIgnore:Ljava/util/Set;

    return-void
.end method

.method private getMember(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addFieldAlias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldToAliasMap:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->aliasToFieldMap:Ljava/util/Map;

    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addFieldsToIgnore(Ljava/util/regex/Pattern;)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->unknownFieldsToIgnore:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public omitField(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldsToOmit:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->aliasToFieldMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->getMember(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldToAliasMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->getMember(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->fieldsToOmit:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->key(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->unknownFieldsToIgnore:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->unknownFieldsToIgnore:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
