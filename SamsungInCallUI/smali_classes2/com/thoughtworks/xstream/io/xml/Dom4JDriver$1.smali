.class Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;
.super Ljava/io/FilterWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;

.field final synthetic val$writer:[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;Ljava/io/Writer;[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;->this$0:Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;

    iput-object p3, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;->val$writer:[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-direct {p0, p2}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;->val$writer:[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->close()V

    return-void
.end method
