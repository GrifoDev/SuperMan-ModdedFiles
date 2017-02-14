.class public interface abstract Lmf/javax/xml/xpath/XPathExpression;
.super Ljava/lang/Object;
.source "XPathExpression.java"


# virtual methods
.method public abstract evaluate(Ljava/lang/Object;Lmf/javax/xml/namespace/QName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract evaluate(Lorg/xml/sax/InputSource;Lmf/javax/xml/namespace/QName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract evaluate(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method
