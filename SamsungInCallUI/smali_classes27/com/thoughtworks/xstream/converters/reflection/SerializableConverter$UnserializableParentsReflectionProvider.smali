.class Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;
.super Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;
.source "SerializableConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnserializableParentsReflectionProvider"
.end annotation


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 0
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 486
    return-void
.end method


# virtual methods
.method public visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "visitor"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider$1;

    invoke-direct {v1, p0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V

    invoke-interface {v0, p1, v1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V

    .line 496
    return-void
.end method
