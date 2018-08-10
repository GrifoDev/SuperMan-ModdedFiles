.class public abstract Landroid/os/HwBinder;
.super Ljava/lang/Object;
.source "HwBinder.java"

# interfaces
.implements Landroid/os/IHwBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwBinder"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Landroid/os/HwBinder;->native_init()J

    move-result-wide v2

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/os/HwBinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/HwBinder;->native_setup()V

    sget-object v0, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/os/HwBinder;->mNativeContext:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method public static final native getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup()V
.end method


# virtual methods
.method public abstract onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final native registerService(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final native transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
