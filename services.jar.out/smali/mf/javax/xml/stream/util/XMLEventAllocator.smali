.class public interface abstract Lmf/javax/xml/stream/util/XMLEventAllocator;
.super Ljava/lang/Object;
.source "XMLEventAllocator.java"


# virtual methods
.method public abstract allocate(Lmf/javax/xml/stream/XMLStreamReader;)Lmf/javax/xml/stream/events/XMLEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract allocate(Lmf/javax/xml/stream/XMLStreamReader;Lmf/javax/xml/stream/util/XMLEventConsumer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract newInstance()Lmf/javax/xml/stream/util/XMLEventAllocator;
.end method
