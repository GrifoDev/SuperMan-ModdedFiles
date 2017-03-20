.class Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;
.super Ljava/lang/Object;
.source "AbstractReferenceMarshaller.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->convert(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

.field final synthetic val$currentPath:Lcom/thoughtworks/xstream/io/path/Path;

.field final synthetic val$newReferenceKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$newReferenceKey:Ljava/lang/Object;

    iput-object p3, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertAnother(Ljava/lang/Object;)V
    .locals 1
    .param p1, "nextItem"    # Ljava/lang/Object;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->convertAnother(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 1
    .param p1, "nextItem"    # Ljava/lang/Object;
    .param p2, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 85
    return-void
.end method

.method public currentPath()Lcom/thoughtworks/xstream/io/path/Path;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    # getter for: Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$100(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/io/path/PathTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookupReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    # getter for: Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->references:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$000(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->lookupId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;

    .line 97
    .local v0, "id":Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->getItem()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public registerImplicit(Ljava/lang/Object;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    # getter for: Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->implicitElements:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$200(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->containsId(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$ReferencedImplicitElementException;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$ReferencedImplicitElementException;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    # getter for: Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->implicitElements:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$200(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$newReferenceKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->associateId(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "original"    # Ljava/lang/Object;
    .param p2, "replacement"    # Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    # getter for: Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->references:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$000(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$newReferenceKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v1, v2, v3}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V

    invoke-virtual {v0, p2, v1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->associateId(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    return-void
.end method
