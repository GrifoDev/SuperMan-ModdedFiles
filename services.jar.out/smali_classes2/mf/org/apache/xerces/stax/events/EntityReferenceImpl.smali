.class public final Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "EntityReferenceImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/EntityReference;


# instance fields
.field private final fDecl:Lmf/javax/xml/stream/events/EntityDeclaration;

.field private final fName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/stream/events/EntityDeclaration;Lmf/javax/xml/stream/Location;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;->fName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;->fDecl:Lmf/javax/xml/stream/events/EntityDeclaration;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/events/EntityDeclaration;Lmf/javax/xml/stream/Location;)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;-><init>(Ljava/lang/String;Lmf/javax/xml/stream/events/EntityDeclaration;Lmf/javax/xml/stream/Location;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lmf/javax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDeclaration()Lmf/javax/xml/stream/events/EntityDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;->fDecl:Lmf/javax/xml/stream/events/EntityDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/16 v0, 0x26

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityReferenceImpl;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
