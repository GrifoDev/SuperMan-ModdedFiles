.class public interface abstract Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;
.super Ljava/lang/Object;
.source "ISDCFotaManager.java"


# static fields
.field public static final BOOT_MODE_DOWNLOAD_MODE:I = 0x2

.field public static final BOOT_MODE_NORMAL_MODE:I = 0x1

.field public static final BOOT_MODE_UNKNOWN:I = 0x0

.field public static final DEVICE_CATEGORY_DEX_PAD:I = 0x1

.field public static final DEVICE_CATEGORY_UNKNOWN:I = 0x0

.field public static final DEX_PAD_CHIP_ID_DP:I = 0x1

.field public static final DEX_PAD_CHIP_ID_PDIC_DS:I = 0x3

.field public static final DEX_PAD_CHIP_ID_PDIC_US:I = 0x2

.field public static final ERROR_CODE_CANNOT_CHIP_OPEN:I = 0x4

.field public static final ERROR_CODE_FOTA_FAILED:I = 0x6

.field public static final ERROR_CODE_NETWORK:I = 0x1

.field public static final ERROR_CODE_SECURITY_PERMISSION_DENIED:I = 0x3

.field public static final ERROR_CODE_UNKOWN:I = 0x0

.field public static final ERROR_CODE_USB_DEVICE_PERMISSION_DENIED:I = 0x5

.field public static final ERROR_CODE_USB_DISCONNECT:I = 0x2

.field public static final UPDATE_TYPE_FOTA_WRITE:I = 0x2

.field public static final UPDATE_TYPE_FOTA_WRITING_RATIO:I = 0x3

.field public static final UPDATE_TYPE_SERVER_DOWNLOAD:I = 0x1


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract requestCheckFotaUpdateAvailable()V
.end method

.method public abstract requestCreate(Landroid/content/Context;Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V
.end method

.method public abstract startFotaUpdate()V
.end method
