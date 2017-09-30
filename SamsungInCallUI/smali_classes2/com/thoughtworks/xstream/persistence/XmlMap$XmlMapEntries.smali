.class Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/persistence/XmlMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlMapEntries"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/persistence/XmlMap;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/persistence/XmlMap;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;->this$0:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;->this$0:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/persistence/XmlMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;->this$0:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-static {v0}, Lcom/thoughtworks/xstream/persistence/XmlMap;->access$000(Lcom/thoughtworks/xstream/persistence/XmlMap;)Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlMap$XmlMapEntries;->this$0:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/persistence/XmlMap;->size()I

    move-result v0

    return v0
.end method
