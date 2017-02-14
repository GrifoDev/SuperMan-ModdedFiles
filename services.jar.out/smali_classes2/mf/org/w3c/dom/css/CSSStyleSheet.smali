.class public interface abstract Lmf/org/w3c/dom/css/CSSStyleSheet;
.super Ljava/lang/Object;
.source "CSSStyleSheet.java"

# interfaces
.implements Lmf/org/w3c/dom/stylesheets/StyleSheet;


# virtual methods
.method public abstract deleteRule(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getCssRules()Lmf/org/w3c/dom/css/CSSRuleList;
.end method

.method public abstract getOwnerRule()Lmf/org/w3c/dom/css/CSSRule;
.end method

.method public abstract insertRule(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
