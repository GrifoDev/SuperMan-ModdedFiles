.class public Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;,
        Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;,
        Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;

.field private final queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->map:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;)Ljava/lang/ref/ReferenceQueue;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private cleanup()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public associateId(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->map:Ljava/util/Map;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;

    invoke-direct {v1, p0, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;-><init>(Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->cleanup()V

    return-void
.end method

.method public containsId(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->map:Ljava/util/Map;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lookupId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->map:Ljava/util/Map;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeId(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->map:Ljava/util/Map;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->cleanup()V

    return-void
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->cleanup()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
