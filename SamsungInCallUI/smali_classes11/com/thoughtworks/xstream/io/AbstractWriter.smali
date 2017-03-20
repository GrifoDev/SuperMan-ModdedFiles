.class public abstract Lcom/thoughtworks/xstream/io/AbstractWriter;
.super Ljava/lang/Object;
.source "AbstractWriter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;


# instance fields
.field private nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/AbstractWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Cloneables;->cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/naming/NameCoder;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/AbstractWriter;->nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 47
    return-void
.end method


# virtual methods
.method public encodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/AbstractWriter;->nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/naming/NameCoder;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/AbstractWriter;->nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/naming/NameCoder;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractWriter;->startNode(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method
