.class public Landroid/drm/DrmInfoStatus;
.super Ljava/lang/Object;
.source "DrmInfoStatus.java"


# static fields
.field public static final SEM_STATUS_ERROR_DRM_E_BUFFER_TOO_SMALL:I = 0xdbe

.field public static final SEM_STATUS_ERROR_DRM_E_CLK_INVALID_DATE:I = 0xdc3

.field public static final SEM_STATUS_ERROR_DRM_E_DEVCERT_REVOKED:I = 0xdb2

.field public static final SEM_STATUS_ERROR_DRM_E_DEVICE_CERTIFICATE_EXCEED_SIZE_LIMIT:I = 0xdc4

.field public static final SEM_STATUS_ERROR_DRM_E_DEVICE_CERTIFICATE_READ_ERROR:I = 0xdbf

.field public static final SEM_STATUS_ERROR_DRM_E_DOMAIN_INVALID_CUSTOM_DATA:I = 0xdc5

.field public static final SEM_STATUS_ERROR_DRM_E_DOMAIN_INVALID_CUSTOM_DATA_TYPE:I = 0xdc6

.field public static final SEM_STATUS_ERROR_DRM_E_DOMAIN_NOT_FOUND:I = 0xdb1

.field public static final SEM_STATUS_ERROR_DRM_E_DOMAIN_STORE_DELETE_DATA:I = 0xdca

.field public static final SEM_STATUS_ERROR_DRM_E_DOMAIN_STORE_GET_DATA:I = 0xdd2

.field public static final SEM_STATUS_ERROR_DRM_E_DRM_NOT_INIT:I = 0xdcc

.field public static final SEM_STATUS_ERROR_DRM_E_INVALID_ARG:I = 0xdbc

.field public static final SEM_STATUS_ERROR_DRM_E_INVALID_DEVICE_CERTIFICATE:I = 0xdc1

.field public static final SEM_STATUS_ERROR_DRM_E_INVALID_DEVICE_CERTIFICATE_TEMPLATE:I = 0xdc0

.field public static final SEM_STATUS_ERROR_DRM_E_INVALID_LICENSE_STORE:I = 0xdc2

.field public static final SEM_STATUS_ERROR_DRM_E_INVALID_METER_CERTIFICATE_SIGNATURE:I = 0xdcd

.field public static final SEM_STATUS_ERROR_DRM_E_INVALID_METER_RESPONSE_SIGNATURE:I = 0xdd0

.field public static final SEM_STATUS_ERROR_DRM_E_LICENSE_EXPIRED:I = 0xdb0

.field public static final SEM_STATUS_ERROR_DRM_E_LICENSE_NOT_FOUND:I = 0xdaf

.field public static final SEM_STATUS_ERROR_DRM_E_METERING_INVALID_COMMAND:I = 0xdcf

.field public static final SEM_STATUS_ERROR_DRM_E_METERING_NOT_SUPPORTED:I = 0xdbd

.field public static final SEM_STATUS_ERROR_DRM_E_METER_STORE_DATA_NOT_FOUND:I = 0xdce

.field public static final SEM_STATUS_ERROR_DRM_E_NO_MORE:I = 0xdcb

.field public static final SEM_STATUS_ERROR_DRM_E_OUT_OF_MEMORY:I = 0xdd1

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_DEVICE_LIMIT_REACHED:I = 0xdb9

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_DOMAIN_REQUIRED:I = 0xdb6

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_INTERNAL_ERROR:I = 0xdb4

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_INVALID_MESSAGE:I = 0xdb3

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_NOT_A_MEMBER:I = 0xdb7

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_PROTOCOL_REDIRECT:I = 0xdbb

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_PROTOCOL_VERSION_MISMATCH:I = 0xdba

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_SERVICE_SPECIFIC:I = 0xdb5

.field public static final SEM_STATUS_ERROR_DRM_E_SERVER_UNKNOWN_ACCOUNT_ID:I = 0xdb8

.field public static final SEM_STATUS_ERROR_DRM_E_SOAP_XML_FORMAT:I = 0xdc8

.field public static final SEM_STATUS_ERROR_DRM_E_XML_NOT_FOUND:I = 0xdc9

.field public static final SEM_STATUS_ERROR_DRM_S_MORE_DATA:I = 0xdc7

.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final data:Landroid/drm/ProcessedData;

.field public final infoType:I

.field public final mimeType:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(IILandroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "infoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/drm/DrmInfoStatus;->isValidStatusCode(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v0, ""

    if-ne p4, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mimeType is null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Landroid/drm/DrmInfoStatus;->statusCode:I

    iput p2, p0, Landroid/drm/DrmInfoStatus;->infoType:I

    iput-object p3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    iput-object p4, p0, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    return-void
.end method

.method private isValidStatusCode(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0xdaf

    if-lt p1, v2, :cond_2

    const/16 v2, 0xdd2

    if-le p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
