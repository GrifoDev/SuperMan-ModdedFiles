.class public interface abstract Lmf/org/w3c/dom/ProcessingInstruction;
.super Ljava/lang/Object;
.source "ProcessingInstruction.java"

# interfaces
.implements Lmf/org/w3c/dom/Node;


# virtual methods
.method public abstract getData()Ljava/lang/String;
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract setData(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
