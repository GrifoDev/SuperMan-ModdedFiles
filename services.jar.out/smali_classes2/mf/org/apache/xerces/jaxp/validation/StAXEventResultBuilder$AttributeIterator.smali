.class final Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;
.super Ljava/lang/Object;
.source "StAXEventResultBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AttributeIterator"
.end annotation


# instance fields
.field fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

.field fEnd:I

.field fIndex:I

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;Lmf/org/apache/xerces/xni/XMLAttributes;I)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    iput p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fEnd:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fEnd:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$1(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/javax/xml/stream/XMLEventFactory;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lmf/javax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
