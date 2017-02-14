.class public interface abstract Lmf/org/w3c/dom/svg/SVGColorProfileElement;
.super Ljava/lang/Object;
.source "SVGColorProfileElement.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGElement;
.implements Lmf/org/w3c/dom/svg/SVGURIReference;
.implements Lmf/org/w3c/dom/svg/SVGRenderingIntent;


# virtual methods
.method public abstract getLocal()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRenderingIntent()S
.end method

.method public abstract setLocal(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setRenderingIntent(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
