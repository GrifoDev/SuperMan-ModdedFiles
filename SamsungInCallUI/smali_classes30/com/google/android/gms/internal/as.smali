.class public final Lcom/google/android/gms/internal/as;
.super Ljava/lang/Object;


# direct methods
.method public static an()Z
    .locals 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->x(I)Z

    move-result v0

    return v0
.end method

.method public static ao()Z
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->x(I)Z

    move-result v0

    return v0
.end method

.method public static ap()Z
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->x(I)Z

    move-result v0

    return v0
.end method

.method public static aq()Z
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->x(I)Z

    move-result v0

    return v0
.end method

.method public static ar()Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->x(I)Z

    move-result v0

    return v0
.end method

.method public static as()Z
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->x(I)Z

    move-result v0

    return v0
.end method

.method private static x(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
