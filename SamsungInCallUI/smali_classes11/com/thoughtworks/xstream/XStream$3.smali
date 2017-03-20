.class Lcom/thoughtworks/xstream/XStream$3;
.super Ljava/lang/Object;
.source "XStream.java"

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

    .prologue
    .line 1776
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$3;->this$0:Lcom/thoughtworks/xstream/XStream;

    iput-object p2, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->state()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    if-eq v0, v1, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->endNode()V

    .line 1796
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->close()V

    .line 1798
    :cond_0
    return-void
.end method

.method public defaultWriteObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 1786
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to writeObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->flush()V

    .line 1791
    return-void
.end method

.method public writeFieldsToStream(Ljava/util/Map;)V
    .locals 2
    .param p1, "fields"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 1782
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to writeObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToStream(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->this$0:Lcom/thoughtworks/xstream/XStream;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0, p1, v1}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 1779
    return-void
.end method
