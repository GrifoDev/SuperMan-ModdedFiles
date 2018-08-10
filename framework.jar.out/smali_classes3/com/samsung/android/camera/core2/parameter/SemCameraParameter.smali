.class public Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;
.super Ljava/lang/Object;
.source "SemCameraParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;,
        Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    }
.end annotation


# static fields
.field public static final CONTROL_DEVICE_SWITCHING:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CONTROL_OPERATION_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_RECORDING_MAX_FPS:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SHOOTING_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SW_VDIS:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_VIDEO_BEAUTY_FACE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_VT_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFO_FACTORY_TEST:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFO_SAMSUNG_CAMERA:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPERATION_MODE_DRAMTEST:Ljava/lang/String; = "dramtest"

.field public static final OPERATION_MODE_NONE:Ljava/lang/String; = "none"

.field public static final OPERATION_MODE_SMART_STAY:Ljava/lang/String; = "smartstay"


# instance fields
.field private mParameters:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "samsungcamera"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->INFO_SAMSUNG_CAMERA:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "factorytest"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->INFO_FACTORY_TEST:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "shootingmode"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_SHOOTING_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "recording-fps"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_RECORDING_MAX_FPS:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "sw-vdis"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_SW_VDIS:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "video-beautyface"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_VIDEO_BEAUTY_FACE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "device-switching"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_DEVICE_SWITCHING:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "vtmode"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_VT_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v1, "operation_mode"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;)V

    sput-object v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_OPERATION_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->mParameters:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static applyToCameraDevice(Landroid/hardware/camera2/CameraDevice;Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "device must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public static createBuilder()Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->createDefaultBuilder()Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static createDefaultBuilder()Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;-><init>(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->INFO_SAMSUNG_CAMERA:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->INFO_FACTORY_TEST:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_SHOOTING_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_RECORDING_MAX_FPS:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_SW_VDIS:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_VIDEO_BEAUTY_FACE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_DEVICE_SWITCHING:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_VT_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->CONTROL_OPERATION_MODE:Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/camera/core2/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/parameter/SemCameraParameter;->mParameters:Ljava/lang/String;

    return-object v0
.end method
