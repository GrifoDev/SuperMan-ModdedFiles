.class Lcom/thoughtworks/xstream/XStream$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/XStream;

.field final synthetic val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/StatefulWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$3;->this$0:Lcom/thoughtworks/xstream/XStream;

    iput-object p2, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->state()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->endNode()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->close()V

    :cond_0
    return-void
.end method

.method public defaultWriteObject()V
    .locals 2

    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to writeObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->flush()V

    return-void
.end method

.method public writeFieldsToStream(Ljava/util/Map;)V
    .locals 2

    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to writeObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToStream(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->this$0:Lcom/thoughtworks/xstream/XStream;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0, p1, v1}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    return-void
.end method
