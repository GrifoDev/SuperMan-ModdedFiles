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

    invoke-direct {p0, p1}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;)V

    sget-wide v0, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v0, p0, Ljava/lang/ref/SoftReference;->timestamp:J

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

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sget-wide v0, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v0, p0, Ljava/lang/ref/SoftReference;->timestamp:J

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

    invoke-super {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    sget-wide v4, Ljava/lang/ref/SoftReference;->clock:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    sget-wide v2, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v2, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    :cond_0
    return-object v0
.end method
