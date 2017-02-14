.class public Lmf/org/apache/xerces/dom3/as/DOMASException;
.super Ljava/lang/RuntimeException;
.source "DOMASException.java"


# static fields
.field public static final DUPLICATE_NAME_ERR:S = 0x1s

.field public static final NO_AS_AVAILABLE:S = 0x3s

.field public static final TYPE_ERR:S = 0x2s

.field public static final WRONG_MIME_TYPE_ERR:S = 0x4s


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/dom3/as/DOMASException;->code:S

    return-void
.end method
