.class public abstract Lmf/org/w3c/dom/svg/SVGException;
.super Ljava/lang/RuntimeException;
.source "SVGException.java"


# static fields
.field public static final SVG_INVALID_VALUE_ERR:S = 0x1s

.field public static final SVG_MATRIX_NOT_INVERTABLE:S = 0x2s

.field public static final SVG_WRONG_TYPE_ERR:S


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/w3c/dom/svg/SVGException;->code:S

    return-void
.end method
