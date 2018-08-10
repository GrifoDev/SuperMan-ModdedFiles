.class public Landroid/media/MediaCasException;
.super Ljava/lang/Exception;
.source "MediaCasException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCasException$DeniedByServerException;,
        Landroid/media/MediaCasException$NotProvisionedException;,
        Landroid/media/MediaCasException$ResourceBusyException;,
        Landroid/media/MediaCasException$UnsupportedCasException;
    }
.end annotation


# static fields
.field public static final DRM_ERROR_BASE:I = -0x7d0

.field public static final ERROR_DRM_CANNOT_HANDLE:I = -0x7d6

.field public static final ERROR_DRM_DECRYPT:I = -0x7d5

.field public static final ERROR_DRM_DECRYPT_UNIT_NOT_INITIALIZED:I = -0x7d4

.field public static final ERROR_DRM_DEVICE_REVOKED:I = -0x7d9

.field public static final ERROR_DRM_INSUFFICIENT_OUTPUT_PROTECTION:I = -0x7db

.field public static final ERROR_DRM_LAST_USED_ERRORCODE:I = -0x7db

.field public static final ERROR_DRM_LICENSE_EXPIRED:I = -0x7d2

.field public static final ERROR_DRM_NOT_PROVISIONED:I = -0x7d8

.field public static final ERROR_DRM_NO_LICENSE:I = -0x7d1

.field public static final ERROR_DRM_RESOURCE_BUSY:I = -0x7da

.field public static final ERROR_DRM_SESSION_NOT_OPENED:I = -0x7d3

.field public static final ERROR_DRM_TAMPER_DETECTED:I = -0x7d7

.field public static final ERROR_DRM_UNKNOWN:I = -0x7d0

.field public static final ERROR_DRM_VENDOR_MAX:I = -0x9c4

.field public static final ERROR_DRM_VENDOR_MIN:I = -0xbb7


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static throwExceptions(Landroid/os/ServiceSpecificException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, -0x7d8

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/media/MediaCasException$NotProvisionedException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$NotProvisionedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, -0x7da

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/media/MediaCasException$ResourceBusyException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$ResourceBusyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, -0x7d9

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/media/MediaCasException$DeniedByServerException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$DeniedByServerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0}, Landroid/media/MediaCasStateException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    return-void
.end method
