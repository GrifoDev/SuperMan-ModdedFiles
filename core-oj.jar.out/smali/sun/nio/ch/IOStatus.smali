.class final Lsun/nio/ch/IOStatus;
.super Ljava/lang/Object;
.source "IOStatus.java"


# static fields
.field static final EOF:I = -0x1

.field static final INTERRUPTED:I = -0x3

.field static final THROWN:I = -0x5

.field static final UNAVAILABLE:I = -0x2

.field static final UNSUPPORTED:I = -0x4

.field static final UNSUPPORTED_CASE:I = -0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(I)Z
    .locals 1

    const/4 v0, -0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static check(J)Z
    .locals 2

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkAll(J)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    const-wide/16 v2, -0x6

    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static normalize(I)I
    .locals 1

    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return p0
.end method

.method static normalize(J)J
    .locals 2

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    return-wide p0
.end method
