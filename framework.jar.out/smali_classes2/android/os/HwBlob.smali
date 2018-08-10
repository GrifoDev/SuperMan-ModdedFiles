.class public Landroid/os/HwBlob;
.super Ljava/lang/Object;
.source "HwBlob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwBlob"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Landroid/os/HwBlob;->native_init()J

    move-result-wide v2

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/os/HwBlob;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/os/HwBlob;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/os/HwBlob;->native_setup(I)V

    sget-object v0, Landroid/os/HwBlob;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/os/HwBlob;->mNativeContext:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup(I)V
.end method

.method public static wrapArray([Z)[Ljava/lang/Boolean;
    .locals 4

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Boolean;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-boolean v3, p0, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static wrapArray([B)[Ljava/lang/Byte;
    .locals 4

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Byte;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static wrapArray([D)[Ljava/lang/Double;
    .locals 6

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Double;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static wrapArray([F)[Ljava/lang/Float;
    .locals 4

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Float;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static wrapArray([I)[Ljava/lang/Integer;
    .locals 4

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static wrapArray([J)[Ljava/lang/Long;
    .locals 6

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Long;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static wrapArray([S)[Ljava/lang/Short;
    .locals 4

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Short;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-short v3, p0, v0

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final native getBool(J)Z
.end method

.method public final native getDouble(J)D
.end method

.method public final native getFloat(J)F
.end method

.method public final native getInt16(J)S
.end method

.method public final native getInt32(J)I
.end method

.method public final native getInt64(J)J
.end method

.method public final native getInt8(J)B
.end method

.method public final native getString(J)Ljava/lang/String;
.end method

.method public final native handle()J
.end method

.method public final native putBlob(JLandroid/os/HwBlob;)V
.end method

.method public final native putBool(JZ)V
.end method

.method public final native putDouble(JD)V
.end method

.method public final native putFloat(JF)V
.end method

.method public final native putInt16(JS)V
.end method

.method public final native putInt32(JI)V
.end method

.method public final native putInt64(JJ)V
.end method

.method public final native putInt8(JB)V
.end method

.method public final native putString(JLjava/lang/String;)V
.end method
