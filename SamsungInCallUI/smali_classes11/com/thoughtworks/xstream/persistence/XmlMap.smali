.class public Lcom/thoughtworks/xstream/persistence/XmlMap;
.super Ljava/util/AbstractMap;
.source "XmlMap.java"


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
    .param p1, "streamStrategy"    # Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/persistence/XmlMap;)Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/persistence/XmlMap;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;-><init>(Lcom/thoughtworks/xstream/persistence/XmlMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap;->persistenceStrategy:Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->size()I

    move-result v0

    return v0
.end method
