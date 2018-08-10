.class public Lcom/samsung/android/rlc/common/Extra$PushInfo;
.super Ljava/lang/Object;
.source "Extra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/common/Extra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushInfo"
.end annotation


# static fields
.field public static final DEFAULT_PUSH_TYPE_LIST:[Ljava/lang/String;

.field public static final DEVICEID:Ljava/lang/String; = "DeviceID"

.field public static final DMSERVER:Ljava/lang/String; = "DMServer"

.field public static final DM_PERMISSION:Ljava/lang/String; = "com.sec.pcw.device.permission.SITDM"

.field public static final MGSERVER:Ljava/lang/String; = "MGServer"

.field public static final PUSH_TYPE_GCM:Ljava/lang/String; = "GCM"

.field public static final PUSH_TYPE_SPP:Ljava/lang/String; = "SPP"

.field public static final REACTIVATION:Ljava/lang/String; = "ReactivationLock"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SPP"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "GCM"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/rlc/common/Extra$PushInfo;->DEFAULT_PUSH_TYPE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
