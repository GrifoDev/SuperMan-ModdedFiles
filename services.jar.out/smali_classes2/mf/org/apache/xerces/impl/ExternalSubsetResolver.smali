.class public interface abstract Lmf/org/apache/xerces/impl/ExternalSubsetResolver;
.super Ljava/lang/Object;
.source "ExternalSubsetResolver.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;


# virtual methods
.method public abstract getExternalSubset(Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
