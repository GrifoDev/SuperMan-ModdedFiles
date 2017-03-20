.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;
.source "AbstractPullReader.java"


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
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x4

    .line 51
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 35
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 36
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 39
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 60
    return-void
.end method

.method private move()V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    .line 119
    .local v0, "event":Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    .line 141
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    goto :goto_0
.end method

.method private readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-object v0, v1

    .line 148
    .local v0, "event":Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    :goto_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullNextEvent()I

    move-result v1

    iput v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    .line 149
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    .line 156
    :goto_1
    return-object v0

    .line 147
    .end local v0    # "event":Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;-><init>(Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$1;)V

    goto :goto_0

    .line 151
    .restart local v0    # "event":Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    :cond_1
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullElementName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    goto :goto_1

    .line 154
    :cond_2
    iput-object v3, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/io/AttributeNameIterator;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
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

    .prologue
    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "last":Ljava/lang/String;
    const/4 v0, 0x0

    .line 179
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    .line 180
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v1

    .line 182
    .local v1, "event":Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    :goto_0
    iget v4, v1, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 183
    iget-object v3, v1, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    .line 184
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 185
    if-nez v2, :cond_1

    .line 186
    move-object v2, v3

    .line 197
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v1

    goto :goto_0

    .line 188
    .restart local v3    # "text":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 194
    .end local v3    # "text":Ljava/lang/String;
    :cond_3
    iget v4, v1, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    .line 200
    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .end local v2    # "last":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v2

    .restart local v2    # "last":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_2
.end method

.method public hasMoreChildren()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    iget v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_1
    return v0

    .line 92
    :pswitch_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    .line 93
    const/4 v0, 0x0

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public mark()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    .line 161
    return-void
.end method

.method public moveDown()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    .line 102
    .local v0, "currentDepth":I
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->move()V

    .line 104
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 108
    :cond_1
    return-void
.end method

.method public moveUp()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    .line 112
    .local v0, "currentDepth":I
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->move()V

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    .line 218
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    .line 219
    .local v0, "ev":Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    .line 222
    iget-object v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    .line 225
    :goto_1
    return-object v1

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    .line 225
    const/4 v1, 0x0

    goto :goto_1

    .line 219
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

    .prologue
    .line 164
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    .line 168
    return-void
.end method
