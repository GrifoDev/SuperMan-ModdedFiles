.class public Lcom/thoughtworks/xstream/persistence/XmlMap;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;
    }
.end annotation


# instance fields
.field private final persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/persistence/XmlMap;)Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;-><init>(Lcom/thoughtworks/xstream/persistence/XmlMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->size()I

    move-result v0

    return v0
.end method
