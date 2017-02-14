.class public Lmf/org/apache/xerces/xs/XSException;
.super Ljava/lang/RuntimeException;
.source "XSException.java"


# static fields
.field public static final INDEX_SIZE_ERR:S = 0x2s

.field public static final NOT_SUPPORTED_ERR:S = 0x1s

.field static final serialVersionUID:J = 0x2b2faa45e338cc2eL


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/xs/XSException;->code:S

    return-void
.end method
