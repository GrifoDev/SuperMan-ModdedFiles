.class Lcom/thoughtworks/xstream/XStream$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/XStream;

.field final synthetic val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$4;->this$0:Lcom/thoughtworks/xstream/XStream;

    iput-object p2, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    return-void
.end method

.method public defaultReadObject()V
    .locals 2

    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to readObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFieldsFromStream()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to readObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFromStream()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$4;->this$0:Lcom/thoughtworks/xstream/XStream;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-object v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 2

    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "stream inactive"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
