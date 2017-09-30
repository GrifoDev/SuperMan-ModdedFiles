.class public Lcom/android/incallui/coreapps/SppReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SppReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SppReceiver"

    const-string v1, "App SppReceiver on receive"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/incallui/coreapps/SppReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/coreapps/SppReceiver$1;-><init>(Lcom/android/incallui/coreapps/SppReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/incallui/coreapps/PermissionUtils;->permissionRequest(Landroid/content/Context;[Ljava/lang/String;Lcom/android/incallui/coreapps/PermissionInterface;)V

    return-void
.end method
