.class public Landroid/hardware/camera2/legacy/LegacyExceptionUtils;
.super Ljava/lang/Object;
.source "LegacyExceptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I

.field public static final BAD_VALUE:I

.field public static final DEAD_OBJECT:I

.field public static final INVALID_OPERATION:I

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_DENIED:I

.field private static final TAG:Ljava/lang/String; = "LegacyExceptionUtils"

.field public static final TIMED_OUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    sget v0, Landroid/system/OsConstants;->EEXIST:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    sget v0, Landroid/system/OsConstants;->ETIMEDOUT:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static throwOnError(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    if-ne p0, v0, :cond_1

    new-instance v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    throw v0

    :cond_1
    if-gez p0, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return p0
.end method

.method public static throwOnServiceError(I)V
    .locals 4

    const/16 v0, 0xa

    if-ltz p0, :cond_0

    return-void

    :cond_0
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    if-ne p0, v2, :cond_1

    const/4 v0, 0x1

    const-string/jumbo v1, "Lacking privileges to access camera service"

    :goto_0
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-direct {v2, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    if-ne p0, v2, :cond_2

    return-void

    :cond_2
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    if-ne p0, v2, :cond_3

    const/4 v0, 0x3

    const-string/jumbo v1, "Bad argument passed to camera service"

    goto :goto_0

    :cond_3
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    if-ne p0, v2, :cond_4

    const/4 v0, 0x4

    const-string/jumbo v1, "Camera service not available"

    goto :goto_0

    :cond_4
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    if-ne p0, v2, :cond_5

    const/16 v0, 0xa

    const-string/jumbo v1, "Operation timed out in camera service"

    goto :goto_0

    :cond_5
    sget v2, Landroid/system/OsConstants;->EACCES:I

    neg-int v2, v2

    if-ne p0, v2, :cond_6

    const/4 v0, 0x6

    const-string/jumbo v1, "Camera disabled by policy"

    goto :goto_0

    :cond_6
    sget v2, Landroid/system/OsConstants;->EBUSY:I

    neg-int v2, v2

    if-ne p0, v2, :cond_7

    const/4 v0, 0x7

    const-string/jumbo v1, "Camera already in use"

    goto :goto_0

    :cond_7
    sget v2, Landroid/system/OsConstants;->EUSERS:I

    neg-int v2, v2

    if-ne p0, v2, :cond_8

    const/16 v0, 0x8

    const-string/jumbo v1, "Maximum number of cameras in use"

    goto :goto_0

    :cond_8
    sget v2, Landroid/system/OsConstants;->ENODEV:I

    neg-int v2, v2

    if-ne p0, v2, :cond_9

    const/4 v0, 0x4

    const-string/jumbo v1, "Camera device not available"

    goto :goto_0

    :cond_9
    sget v2, Landroid/system/OsConstants;->EOPNOTSUPP:I

    neg-int v2, v2

    if-ne p0, v2, :cond_a

    const/16 v0, 0x9

    const-string/jumbo v1, "Deprecated camera HAL does not support this"

    goto :goto_0

    :cond_a
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    if-ne p0, v2, :cond_b

    const/16 v0, 0xa

    const-string/jumbo v1, "Illegal state encountered in camera service."

    goto :goto_0

    :cond_b
    const/16 v0, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown camera device error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
