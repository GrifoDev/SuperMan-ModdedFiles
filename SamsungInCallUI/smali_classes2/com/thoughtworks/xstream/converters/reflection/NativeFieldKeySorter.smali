.class public Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter$1;

    invoke-direct {v1, p0}, Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
