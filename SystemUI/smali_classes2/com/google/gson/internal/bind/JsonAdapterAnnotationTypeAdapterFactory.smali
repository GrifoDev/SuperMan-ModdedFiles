.class public final Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/JsonAdapter;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v3
.end method

.method getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ConstructorConstructor;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/google/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v6

    instance-of v3, v6, Lcom/google/gson/TypeAdapter;

    if-nez v3, :cond_2

    instance-of v3, v6, Lcom/google/gson/TypeAdapterFactory;

    if-nez v3, :cond_3

    instance-of v3, v6, Lcom/google/gson/JsonSerializer;

    if-eqz v3, :cond_4

    :cond_0
    instance-of v3, v6, Lcom/google/gson/JsonSerializer;

    if-nez v3, :cond_5

    move-object v1, v5

    :goto_0
    instance-of v3, v6, Lcom/google/gson/JsonDeserializer;

    if-nez v3, :cond_6

    move-object v2, v5

    :goto_1
    new-instance v0, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V

    :goto_2
    if-nez v0, :cond_7

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    move-object v0, v6

    check-cast v0, Lcom/google/gson/TypeAdapter;

    goto :goto_2

    :cond_3
    check-cast v6, Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v6, p2, p3}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_2

    :cond_4
    instance-of v3, v6, Lcom/google/gson/JsonDeserializer;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    move-object v3, v6

    check-cast v3, Lcom/google/gson/JsonSerializer;

    move-object v1, v3

    goto :goto_0

    :cond_6
    check-cast v6, Lcom/google/gson/JsonDeserializer;

    move-object v2, v6

    goto :goto_1

    :cond_7
    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->nullSafe()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_3
.end method
