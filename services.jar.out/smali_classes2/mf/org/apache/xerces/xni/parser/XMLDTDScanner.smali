.class public interface abstract Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
.super Ljava/lang/Object;
.source "XMLDTDScanner.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDSource;
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;


# virtual methods
.method public abstract scanDTDExternalSubset(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract scanDTDInternalSubset(ZZZ)Z
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
