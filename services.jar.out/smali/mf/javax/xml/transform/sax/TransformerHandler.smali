.class public interface abstract Lmf/javax/xml/transform/sax/TransformerHandler;
.super Ljava/lang/Object;
.source "TransformerHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;


# virtual methods
.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public abstract getTransformer()Lmf/javax/xml/transform/Transformer;
.end method

.method public abstract setResult(Lmf/javax/xml/transform/Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setSystemId(Ljava/lang/String;)V
.end method
