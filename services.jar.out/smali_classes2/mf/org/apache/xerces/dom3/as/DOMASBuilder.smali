.class public interface abstract Lmf/org/apache/xerces/dom3/as/DOMASBuilder;
.super Ljava/lang/Object;
.source "DOMASBuilder.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSParser;


# virtual methods
.method public abstract getAbstractSchema()Lmf/org/apache/xerces/dom3/as/ASModel;
.end method

.method public abstract parseASInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/dom3/as/ASModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract parseASURI(Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setAbstractSchema(Lmf/org/apache/xerces/dom3/as/ASModel;)V
.end method
