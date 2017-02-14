.class public interface abstract Lmf/javax/xml/transform/ErrorListener;
.super Ljava/lang/Object;
.source "ErrorListener.java"


# virtual methods
.method public abstract error(Lmf/javax/xml/transform/TransformerException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract fatalError(Lmf/javax/xml/transform/TransformerException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract warning(Lmf/javax/xml/transform/TransformerException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation
.end method
