.class public interface abstract Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;
.super Ljava/lang/Object;
.source "XMLDocumentScanner.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;


# virtual methods
.method public abstract scanDocument(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
