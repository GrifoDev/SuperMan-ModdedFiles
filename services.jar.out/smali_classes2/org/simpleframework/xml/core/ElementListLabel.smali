.class Lorg/simpleframework/xml/core/ElementListLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementListLabel.java"


# instance fields
.field private cache:Lorg/simpleframework/xml/core/Expression;

.field private data:Z

.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private entry:Ljava/lang/String;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private inline:Z

.field private item:Ljava/lang/Class;

.field private label:Lorg/simpleframework/xml/ElementList;

.field private name:Ljava/lang/String;

.field private override:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private required:Z

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementList;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0, p3}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    new-instance v0, Lorg/simpleframework/xml/core/Qualifier;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Qualifier;-><init>(Lorg/simpleframework/xml/core/Contact;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementList;->required()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->required:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->type:Ljava/lang/Class;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementList;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->override:Ljava/lang/String;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementList;->inline()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->inline:Z

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementList;->entry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->entry:Ljava/lang/String;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementList;->data()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->data:Z

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementList;->type()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->item:Ljava/lang/Class;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ElementListLabel;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->label:Lorg/simpleframework/xml/ElementList;

    return-void
.end method

.method private getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/PrimitiveList;

    invoke-direct {v2, p1, v1, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveList;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/CompositeList;

    invoke-direct {v2, p1, v1, v0, p2}, Lorg/simpleframework/xml/core/CompositeList;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v2
.end method

.method private getInlineConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/simpleframework/xml/core/PrimitiveInlineList;

    invoke-direct {v2, p1, v1, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveInlineList;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/CompositeInlineList;

    invoke-direct {v2, p1, v1, v0, p2}, Lorg/simpleframework/xml/core/CompositeInlineList;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->label:Lorg/simpleframework/xml/ElementList;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getEntry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->label:Lorg/simpleframework/xml/ElementList;

    invoke-interface {v1}, Lorg/simpleframework/xml/ElementList;->inline()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/ElementListLabel;->getInlineConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/ElementListLabel;->getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v1

    return-object v1
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->item:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->item:Ljava/lang/Class;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/simpleframework/xml/core/ClassType;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->item:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getDependent()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->item:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v3, "Unable to determine generic type for %s"

    invoke-direct {v1, v3, v2}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lorg/simpleframework/xml/core/ClassType;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->type:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->label:Lorg/simpleframework/xml/ElementList;

    invoke-interface {v2}, Lorg/simpleframework/xml/ElementList;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Factory;->getInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getEntry()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->entry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->entry:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Introspector;->getEntry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->entry:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->name:Ljava/lang/String;

    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->override:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->path:Ljava/lang/String;

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/simpleframework/xml/core/ElementListLabel;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isCollection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isData()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->data:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->inline:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->required:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
