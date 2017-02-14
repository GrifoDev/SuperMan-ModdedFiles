.class public interface abstract Lmf/org/apache/xml/serialize/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# virtual methods
.method public abstract asContentHandler()Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asDOMSerializer()Lmf/org/apache/xml/serialize/DOMSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asDocumentHandler()Lorg/xml/sax/DocumentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setOutputByteStream(Ljava/io/OutputStream;)V
.end method

.method public abstract setOutputCharStream(Ljava/io/Writer;)V
.end method

.method public abstract setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
.end method
