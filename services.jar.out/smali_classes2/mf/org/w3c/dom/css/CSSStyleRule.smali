.class public interface abstract Lmf/org/w3c/dom/css/CSSStyleRule;
.super Ljava/lang/Object;
.source "CSSStyleRule.java"

# interfaces
.implements Lmf/org/w3c/dom/css/CSSRule;


# virtual methods
.method public abstract getSelectorText()Ljava/lang/String;
.end method

.method public abstract getStyle()Lmf/org/w3c/dom/css/CSSStyleDeclaration;
.end method

.method public abstract setSelectorText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
