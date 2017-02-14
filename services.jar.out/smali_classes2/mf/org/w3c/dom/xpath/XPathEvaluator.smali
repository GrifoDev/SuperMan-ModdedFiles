.class public interface abstract Lmf/org/w3c/dom/xpath/XPathEvaluator;
.super Ljava/lang/Object;
.source "XPathEvaluator.java"


# virtual methods
.method public abstract createExpression(Ljava/lang/String;Lmf/org/w3c/dom/xpath/XPathNSResolver;)Lmf/org/w3c/dom/xpath/XPathExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/xpath/XPathException;,
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract createNSResolver(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/xpath/XPathNSResolver;
.end method

.method public abstract evaluate(Ljava/lang/String;Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/xpath/XPathNSResolver;SLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/xpath/XPathException;,
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
