.class public Lcom/android/incallui/coreapps/GcmReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SDKTestApp"

    const-string v1, "App GcmReceiver on receive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/incallui/coreapps/GcmReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/coreapps/GcmReceiver$1;-><init>(Lcom/android/incallui/coreapps/GcmReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/incallui/coreapps/PermissionUtils;->permissionRequest(Landroid/content/Context;[Ljava/lang/String;Lcom/android/incallui/coreapps/PermissionInterface;)V

    return-void
.end method
