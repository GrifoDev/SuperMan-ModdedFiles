.class final Lmf/org/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;
.super Ljava/lang/Object;
.source "SerializedXMLGregorianCalendar.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6b959aa874aab7f5L


# instance fields
.field private final lexicalValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;->lexicalValue:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;->lexicalValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;->newXMLGregorianCalendar(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method
