.class public interface abstract Lmf/org/apache/xerces/xs/XSImplementation;
.super Ljava/lang/Object;
.source "XSImplementation.java"


# virtual methods
.method public abstract createLSInputList([Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/LSInputList;
.end method

.method public abstract createStringList([Ljava/lang/String;)Lmf/org/apache/xerces/xs/StringList;
.end method

.method public abstract createXSLoader(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getRecognizedVersions()Lmf/org/apache/xerces/xs/StringList;
.end method
