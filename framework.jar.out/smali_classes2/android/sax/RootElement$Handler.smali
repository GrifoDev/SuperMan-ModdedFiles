.class Landroid/sax/RootElement$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RootElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field bodyBuilder:Ljava/lang/StringBuilder;

.field current:Landroid/sax/Element;

.field depth:I

.field locator:Lorg/xml/sax/Locator;

.field final synthetic this$0:Landroid/sax/RootElement;


# direct methods
.method constructor <init>(Landroid/sax/RootElement;)V
    .locals 2
    .param p1, "this$0"    # Landroid/sax/RootElement;

    .prologue
    const/4 v1, 0x0

    .line 97
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/sax/RootElement$Handler;->depth:I

    .line 101
    iput-object v1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 102
    iput-object v1, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    .line 97
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 183
    .local v1, "current":Landroid/sax/Element;
    iget v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    iget v3, v1, Landroid/sax/Element;->depth:I

    if-ne v2, v3, :cond_2

    .line 184
    iget-object v2, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v1, v2}, Landroid/sax/Element;->checkRequiredChildren(Lorg/xml/sax/Locator;)V

    .line 187
    iget-object v2, v1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, v1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    invoke-interface {v2}, Landroid/sax/EndElementListener;->end()V

    .line 192
    :cond_0
    iget-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "body":Ljava/lang/String;
    iput-object v4, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    .line 197
    iget-object v2, v1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    invoke-interface {v2, v0}, Landroid/sax/EndTextElementListener;->end(Ljava/lang/String;)V

    .line 201
    .end local v0    # "body":Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Landroid/sax/Element;->parent:Landroid/sax/Element;

    iput-object v2, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 204
    :cond_2
    iget v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    .line 179
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    .line 105
    return-void
.end method

.method start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "e"    # Landroid/sax/Element;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 155
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 157
    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    invoke-interface {v0, p2}, Landroid/sax/StartElementListener;->start(Lorg/xml/sax/Attributes;)V

    .line 161
    :cond_0
    iget-object v0, p1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/sax/Element;->resetRequiredChildren()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/sax/Element;->visited:Z

    .line 153
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 112
    iget v3, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroid/sax/RootElement$Handler;->depth:I

    .line 114
    .local v2, "depth":I
    if-nez v2, :cond_0

    .line 116
    invoke-virtual {p0, p1, p2, p4}, Landroid/sax/RootElement$Handler;->startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 117
    return-void

    .line 121
    :cond_0
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    .line 122
    new-instance v3, Landroid/sax/BadXmlException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Encountered mixed content within text element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    iget-object v5, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    const-string/jumbo v5, "."

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    iget-object v5, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    .line 122
    invoke-direct {v3, v4, v5}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v3

    .line 128
    :cond_1
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget v3, v3, Landroid/sax/Element;->depth:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_2

    .line 130
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget-object v1, v3, Landroid/sax/Element;->children:Landroid/sax/Children;

    .line 131
    .local v1, "children":Landroid/sax/Children;
    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v1, p1, p2}, Landroid/sax/Children;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 133
    .local v0, "child":Landroid/sax/Element;
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p0, v0, p4}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    .line 111
    .end local v0    # "child":Landroid/sax/Element;
    .end local v1    # "children":Landroid/sax/Children;
    :cond_2
    return-void
.end method

.method startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    .line 143
    .local v0, "root":Landroid/sax/Element;
    iget-object v1, v0, Landroid/sax/Element;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, v0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    new-instance v1, Landroid/sax/BadXmlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Root element name does not match. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    const-string/jumbo v3, ", Got: "

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-static {p1, p2}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v3, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    .line 145
    invoke-direct {v1, v2, v3}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 150
    :cond_1
    invoke-virtual {p0, v0, p3}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    .line 141
    return-void
.end method
