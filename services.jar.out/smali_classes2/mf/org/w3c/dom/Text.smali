.class public interface abstract Lmf/org/w3c/dom/Text;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Lmf/org/w3c/dom/CharacterData;


# virtual methods
.method public abstract getWholeText()Ljava/lang/String;
.end method

.method public abstract isElementContentWhitespace()Z
.end method

.method public abstract replaceWholeText(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract splitText(I)Lmf/org/w3c/dom/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
