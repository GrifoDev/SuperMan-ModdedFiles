.class public Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    instance-of v0, p0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;

    invoke-interface {p0, p1, p2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    goto :goto_0
.end method
