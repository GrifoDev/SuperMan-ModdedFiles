.class abstract Lcom/google/common/collect/ForwardingImmutableList;
.super Ljava/lang/Object;
.source "ForwardingImmutableList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/ForwardingImmutableList;, "Lcom/google/common/collect/ForwardingImmutableList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
