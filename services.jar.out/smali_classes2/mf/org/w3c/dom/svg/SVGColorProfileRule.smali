.class public interface abstract Lmf/org/w3c/dom/svg/SVGColorProfileRule;
.super Ljava/lang/Object;
.source "SVGColorProfileRule.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGCSSRule;
.implements Lmf/org/w3c/dom/svg/SVGRenderingIntent;


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRenderingIntent()S
.end method

.method public abstract getSrc()Ljava/lang/String;
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

.method public abstract setSrc(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
