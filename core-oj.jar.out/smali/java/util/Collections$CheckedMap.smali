.class Ljava/util/Collections$CheckedMap;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedMap$-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0;,
        Ljava/util/Collections$CheckedMap$-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0;,
        Ljava/util/Collections$CheckedMap$-java_util_function_BiFunction_typeCheck_java_util_function_BiFunction_func_LambdaImpl0;,
        Ljava/util/Collections$CheckedMap$CheckedEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fb2bcdf0d186368L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3049
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3094
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    .line 3050
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    .line 3051
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    .line 3052
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    .line 3049
    return-void
.end method

.method private badKeyMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 3040
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Attempt to insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3041
    const-string/jumbo v1, " key into map with key type "

    .line 3040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3041
    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    .line 3040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 3045
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Attempt to insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3046
    const-string/jumbo v1, " value into map with value type "

    .line 3045
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3046
    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    .line 3045
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;"
        }
    .end annotation

    .prologue
    .line 3031
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "func":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    new-instance v0, Ljava/util/Collections$CheckedMap$-java_util_function_BiFunction_typeCheck_java_util_function_BiFunction_func_LambdaImpl0;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedMap$-java_util_function_BiFunction_typeCheck_java_util_function_BiFunction_func_LambdaImpl0;-><init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method private typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 3022
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3025
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3021
    :cond_1
    return-void

    .line 3023
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedMap;->badKeyMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3026
    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p2}, Ljava/util/Collections$CheckedMap;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method synthetic -java_util_Collections$CheckedMap_lambda$3(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "func"    # Ljava/util/function/BiFunction;
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "v"    # Ljava/lang/Object;

    .prologue
    .line 3033
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3034
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p2, v0}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3035
    return-object v0
.end method

.method synthetic -java_util_Collections$CheckedMap_lambda$4(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "mappingFunction"    # Ljava/util/function/Function;
    .param p2, "k"    # Ljava/lang/Object;

    .prologue
    .line 3141
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3142
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p2, v0}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3143
    return-object v0
.end method

.method synthetic -java_util_Collections$CheckedMap_lambda$5(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "remappingFunction"    # Ljava/util/function/BiFunction;
    .param p2, "v1"    # Ljava/lang/Object;
    .param p3, "v2"    # Ljava/lang/Object;

    .prologue
    .line 3164
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3165
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3166
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 3061
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 3156
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 3139
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3140
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/Collections$CheckedMap$-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0;

    invoke-direct {v1, p0, p2}, Ljava/util/Collections$CheckedMap$-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0;-><init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 3150
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 3057
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 3058
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3097
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3098
    new-instance v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    iput-object v0, p0, Ljava/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    .line 3099
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3064
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3105
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3104
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3059
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 3065
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3056
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3062
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 3162
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/Collections$CheckedMap$-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0;

    invoke-direct {v1, p0, p3}, Ljava/util/Collections$CheckedMap$-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0;-><init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;)V

    invoke-interface {v0, p1, p2, v1}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3069
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3070
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3080
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 3081
    .local v4, "entries":[Ljava/lang/Object;
    new-instance v0, Ljava/util/ArrayList;

    array-length v8, v4

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 3082
    .local v0, "checked":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v8, 0x0

    array-length v9, v4

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v6, v4, v8

    .local v6, "o":Ljava/lang/Object;
    move-object v1, v6

    .line 3083
    check-cast v1, Ljava/util/Map$Entry;

    .line 3084
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3085
    .local v5, "k":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 3086
    .local v7, "v":Ljava/lang/Object;
    invoke-direct {p0, v5, v7}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3088
    new-instance v10, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v10, v5, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3087
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3082
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3090
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v5    # "k":Ljava/lang/Object;
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "v":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3091
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3074
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3115
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3116
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3060
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 3121
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3132
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3133
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3126
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p3}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3127
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3110
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 3109
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3055
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3066
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3063
    .local p0, "this":Ljava/util/Collections$CheckedMap;, "Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
