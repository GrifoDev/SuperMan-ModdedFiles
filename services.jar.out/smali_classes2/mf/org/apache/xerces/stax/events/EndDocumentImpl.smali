.class public final Lmf/org/apache/xerces/stax/events/EndDocumentImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "EndDocumentImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/EndDocument;


# direct methods
.method public constructor <init>(Lmf/javax/xml/stream/Location;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method
