.class public interface abstract Lmf/javax/xml/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"


# virtual methods
.method public abstract compile(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract evaluate(Ljava/lang/String;Ljava/lang/Object;Lmf/javax/xml/namespace/QName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Lmf/javax/xml/namespace/QName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;
.end method

.method public abstract getXPathFunctionResolver()Lmf/javax/xml/xpath/XPathFunctionResolver;
.end method

.method public abstract getXPathVariableResolver()Lmf/javax/xml/xpath/XPathVariableResolver;
.end method

.method public abstract reset()V
.end method

.method public abstract setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V
.end method

.method public abstract setXPathFunctionResolver(Lmf/javax/xml/xpath/XPathFunctionResolver;)V
.end method

.method public abstract setXPathVariableResolver(Lmf/javax/xml/xpath/XPathVariableResolver;)V
.end method
