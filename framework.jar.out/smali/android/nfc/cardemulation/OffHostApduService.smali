.class public abstract Landroid/nfc/cardemulation/OffHostApduService;
.super Landroid/app/Service;
.source "OffHostApduService.java"


# static fields
.field public static final SERVICE_EXTRA_META_DATA:Ljava/lang/String; = "com.gsma.nfc.services"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.off_host_apdu_service"

.field public static final SE_EXT_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.se_extensions"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method
