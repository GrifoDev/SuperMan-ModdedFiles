.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$1;,
        Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    }
.end annotation


# static fields
.field protected static final COMMENT:I = 0x4

.field protected static final END_NODE:I = 0x2

.field protected static final OTHER:I = 0x0

.field protected static final START_NODE:I = 0x1

.field protected static final TEXT:I = 0x3


# instance fields
.field private final elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private marked:Z

.field private final pool:Lcom/thoughtworks/xstream/core/util/FastStack;


# direct methods
.method protected constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private move()V
    .locals 2

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    .locals 2

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    goto :goto_0
.end method

.method private readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    :goto_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullNextEvent()I

    move-result v1

    iput v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;-><init>(Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$1;)V

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullElementName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v3, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/io/AttributeNameIterator;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->unescapeXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    move-object v2, v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    iget v3, v1, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v1, v1, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-nez v2, :cond_0

    :goto_1
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    iget v1, v1, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_2
    return-object v2

    :cond_5
    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_2
.end method

.method public hasMoreChildren()Z
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    iget v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public mark()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    return-void
.end method

.method public moveDown()V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->move()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public moveUp()V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->move()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    :goto_1
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract pullElementName()Ljava/lang/String;
.end method

.method protected abstract pullNextEvent()I
.end method

.method protected abstract pullText()Ljava/lang/String;
.end method

.method public reset()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    return-void
.end method
