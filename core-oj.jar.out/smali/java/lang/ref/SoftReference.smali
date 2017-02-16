.class public Ljava/lang/ref/SoftReference;
.super Ljava/lang/ref/Reference;
.source "SoftReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static clock:J


# instance fields
.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;)V

    .line 90
    sget-wide v0, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v0, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 104
    sget-wide v0, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v0, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    .line 102
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    invoke-super {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "o":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    iget-wide v2, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    sget-wide v4, Ljava/lang/ref/SoftReference;->clock:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 118
    sget-wide v2, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v2, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    .line 119
    :cond_0
    return-object v0
.end method
