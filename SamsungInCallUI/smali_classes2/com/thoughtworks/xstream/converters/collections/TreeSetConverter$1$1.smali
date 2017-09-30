.class Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;->populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

.field final synthetic val$target:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;->this$1:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;->val$target:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;->val$target:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;->val$target:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
