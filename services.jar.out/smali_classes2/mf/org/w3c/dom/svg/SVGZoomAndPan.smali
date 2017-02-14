.class public interface abstract Lmf/org/w3c/dom/svg/SVGZoomAndPan;
.super Ljava/lang/Object;
.source "SVGZoomAndPan.java"


# static fields
.field public static final SVG_ZOOMANDPAN_DISABLE:S = 0x1s

.field public static final SVG_ZOOMANDPAN_MAGNIFY:S = 0x2s

.field public static final SVG_ZOOMANDPAN_UNKNOWN:S


# virtual methods
.method public abstract getZoomAndPan()S
.end method

.method public abstract setZoomAndPan(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
