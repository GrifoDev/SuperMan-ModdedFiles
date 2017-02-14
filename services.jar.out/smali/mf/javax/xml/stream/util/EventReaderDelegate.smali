.class public Lmf/javax/xml/stream/util/EventReaderDelegate;
.super Ljava/lang/Object;
.source "EventReaderDelegate.java"

# interfaces
.implements Lmf/javax/xml/stream/XMLEventReader;


# instance fields
.field private reader:Lmf/javax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLEventReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->close()V

    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lmf/javax/xml/stream/XMLEventReader;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextEvent()Lmf/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public nextTag()Lmf/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->nextTag()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lmf/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->remove()V

    return-void
.end method

.method public setParent(Lmf/javax/xml/stream/XMLEventReader;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/stream/util/EventReaderDelegate;->reader:Lmf/javax/xml/stream/XMLEventReader;

    return-void
.end method
