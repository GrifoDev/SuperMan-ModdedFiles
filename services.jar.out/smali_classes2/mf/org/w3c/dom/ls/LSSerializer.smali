.class public interface abstract Lmf/org/w3c/dom/ls/LSSerializer;
.super Ljava/lang/Object;
.source "LSSerializer.java"


# virtual methods
.method public abstract getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
.end method

.method public abstract getFilter()Lmf/org/w3c/dom/ls/LSSerializerFilter;
.end method

.method public abstract getNewLine()Ljava/lang/String;
.end method

.method public abstract setFilter(Lmf/org/w3c/dom/ls/LSSerializerFilter;)V
.end method

.method public abstract setNewLine(Ljava/lang/String;)V
.end method

.method public abstract write(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/ls/LSOutput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract writeToString(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract writeToURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation
.end method
