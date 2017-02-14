.class public Lmf/org/w3c/dom/events/EventException;
.super Ljava/lang/RuntimeException;
.source "EventException.java"


# static fields
.field public static final UNSPECIFIED_EVENT_TYPE_ERR:S


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/w3c/dom/events/EventException;->code:S

    return-void
.end method
