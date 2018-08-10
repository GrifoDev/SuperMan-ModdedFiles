.class public abstract Landroid/support/v4/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;,
        Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;
    }
.end annotation


# static fields
.field private static final sInstances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/hardware/display/DisplayManagerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .locals 4

    sget-object v2, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;

    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_1

    new-instance v0, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;-><init>(Landroid/content/Context;)V

    :goto_0
    sget-object v1, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
