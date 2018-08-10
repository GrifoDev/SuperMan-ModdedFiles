.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final mActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static mNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    const/4 v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method
