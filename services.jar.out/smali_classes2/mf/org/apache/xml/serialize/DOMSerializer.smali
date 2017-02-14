.class public interface abstract Lmf/org/apache/xml/serialize/DOMSerializer;
.super Ljava/lang/Object;
.source "DOMSerializer.java"


# virtual methods
.method public abstract serialize(Lmf/org/w3c/dom/Document;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract serialize(Lmf/org/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
