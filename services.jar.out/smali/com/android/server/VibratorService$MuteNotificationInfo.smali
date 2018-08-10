.class Lcom/android/server/VibratorService$MuteNotificationInfo;
.super Lcom/android/server/VibratorService$MuteInfo;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MuteNotificationInfo"
.end annotation


# static fields
.field private static sMuteOn:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService$MuteNotificationInfo;->sMuteOn:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/VibratorService$MuteNotificationInfo;->sMuteOn:Z

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$MuteInfo;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
