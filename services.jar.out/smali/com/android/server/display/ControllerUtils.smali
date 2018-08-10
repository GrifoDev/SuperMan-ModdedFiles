.class public final Lcom/android/server/display/ControllerUtils;
.super Ljava/lang/Object;
.source "ControllerUtils.java"


# static fields
.field private static final CONLROLLER_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.smartmirroring"

.field private static final CONTROLLER_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.smartmirroring.controller.ControllerService"

.field private static final TAG:Ljava/lang/String; = "ControllerUtils"

.field public static final VOLUME_KEY_DOWN:I = -0x1

.field public static final VOLUME_KEY_UP:I = 0x1

.field public static final VOLUME_MUTE:I = 0x2

.field public static final VOLUME_UNMUTE:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/ControllerUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public keyEventToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "VOLUME_KEY_DOWN"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "VOLUME_KEY_UP"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "VOLUME_MUTE"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string/jumbo v0, "VOLUME_UNMUTE"

    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public startControllerService()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.smartmirroring"

    const-string/jumbo v3, "com.samsung.android.smartmirroring.controller.ControllerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/ControllerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stopControllerService()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.smartmirroring"

    const-string/jumbo v3, "com.samsung.android.smartmirroring.controller.ControllerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/ControllerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
