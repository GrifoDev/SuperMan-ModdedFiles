.class public Lmf/org/apache/xerces/stax/events/AttributeImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "AttributeImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/Attribute;


# instance fields
.field private final fDtdType:Ljava/lang/String;

.field private final fIsSpecified:Z

.field private final fName:Lmf/javax/xml/namespace/QName;

.field private final fValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILmf/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLmf/javax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0, p1, p6}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fName:Lmf/javax/xml/namespace/QName;

    iput-object p3, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fDtdType:Ljava/lang/String;

    iput-boolean p5, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fIsSpecified:Z

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLmf/javax/xml/stream/Location;)V
    .locals 7

    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/stax/events/AttributeImpl;-><init>(ILmf/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLmf/javax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public final getDTDType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fDtdType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Lmf/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fName:Lmf/javax/xml/namespace/QName;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    return-object v0
.end method

.method public final isSpecified()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fIsSpecified:Z

    return v0
.end method

.method public final writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fName:Lmf/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fName:Lmf/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
