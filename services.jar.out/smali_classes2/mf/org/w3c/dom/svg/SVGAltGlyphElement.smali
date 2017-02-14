.class public interface abstract Lmf/org/w3c/dom/svg/SVGAltGlyphElement;
.super Ljava/lang/Object;
.source "SVGAltGlyphElement.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGTextPositioningElement;
.implements Lmf/org/w3c/dom/svg/SVGURIReference;


# virtual methods
.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getGlyphRef()Ljava/lang/String;
.end method

.method public abstract setFormat(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setGlyphRef(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
