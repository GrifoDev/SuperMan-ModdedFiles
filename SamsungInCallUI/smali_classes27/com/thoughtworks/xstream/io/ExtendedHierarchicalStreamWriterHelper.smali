.class public Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;
.super Ljava/lang/Object;
.source "ExtendedHierarchicalStreamWriterHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 16
    instance-of v0, p0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;

    if-eqz v0, :cond_0

    .line 17
    check-cast p0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;

    .end local p0    # "writer":Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    invoke-interface {p0, p1, p2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    :goto_0
    return-void

    .line 19
    .restart local p0    # "writer":Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    :cond_0
    invoke-interface {p0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    goto :goto_0
.end method
