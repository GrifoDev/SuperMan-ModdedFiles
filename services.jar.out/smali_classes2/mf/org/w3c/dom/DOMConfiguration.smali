.class public interface abstract Lmf/org/w3c/dom/DOMConfiguration;
.super Ljava/lang/Object;
.source "DOMConfiguration.java"


# virtual methods
.method public abstract canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getParameterNames()Lmf/org/w3c/dom/DOMStringList;
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
