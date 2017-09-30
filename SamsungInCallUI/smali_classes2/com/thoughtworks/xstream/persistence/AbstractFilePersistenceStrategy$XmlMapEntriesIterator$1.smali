.class Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;->next()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final key:Ljava/lang/Object;

.field final synthetic this$1:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;)V
    .locals 3

    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->this$1:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->this$1:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->this$1:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    invoke-static {v1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;->access$300(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;)[Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->this$1:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    invoke-static {v2}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;->access$404(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;->access$202(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->this$1:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    iget-object v0, v0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;->this$0:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->extractKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->key:Ljava/lang/Object;

    if-nez v4, :cond_2

    if-nez v2, :cond_0

    :goto_1
    if-nez v1, :cond_3

    if-nez v3, :cond_0

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->key:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->this$1:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    iget-object v0, v0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;->this$0:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->access$500(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->this$1:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    iget-object v0, v0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;->this$0:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator$1;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
