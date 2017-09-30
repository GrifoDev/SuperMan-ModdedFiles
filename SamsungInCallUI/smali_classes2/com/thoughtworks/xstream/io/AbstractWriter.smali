.class public abstract Lcom/thoughtworks/xstream/io/AbstractWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;


# instance fields
.field private nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/AbstractWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Cloneables;->cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/naming/NameCoder;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/AbstractWriter;->nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    return-void
.end method


# virtual methods
.method public encodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/AbstractWriter;->nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/naming/NameCoder;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/AbstractWriter;->nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/naming/NameCoder;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractWriter;->startNode(Ljava/lang/String;)V

    return-void
.end method

.method public underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 0

    return-object p0
.end method
