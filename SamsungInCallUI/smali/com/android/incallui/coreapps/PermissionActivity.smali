.class public Lcom/android/incallui/coreapps/PermissionActivity;
.super Landroid/app/Activity;


# static fields
.field public static final KEY_PERMISSION_ARRAY:Ljava/lang/String; = "permission_list"

.field public static final KEY_PERMISSION_INTERFACE:Ljava/lang/String; = "permission_interface"

.field public static final PERMISSION_DENIED:I = 0x2710

.field public static final PERMISSION_GRANTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CoreAppsPermissionActivity"


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mPInterface:Lcom/android/incallui/coreapps/PermissionInterface;

.field private mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private requestPermission()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mPermissions:[Ljava/lang/String;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/android/incallui/coreapps/PermissionUtils;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/PermissionActivity;->sendPermissionResult(I)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/PermissionActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/incallui/coreapps/PermissionActivity;->sendPermissionResult(I)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/PermissionActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "CoreAppsPermissionActivity"

    const-string v1, "onCreate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permission_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mPermissions:[Ljava/lang/String;

    const-string v1, "permission_interface"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CoreAppsPermissionActivity"

    const-string v1, "Empty permssions..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/PermissionActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/coreapps/PermissionActivity;->requestPermission()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    invoke-static {p3}, Lcom/android/incallui/coreapps/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/PermissionActivity;->sendPermissionResult(I)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/coreapps/CoreAppsManager;->addCheckedPermissions([Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/PermissionActivity;->finish()V

    return-void

    :cond_1
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/PermissionActivity;->sendPermissionResult(I)V

    goto :goto_0
.end method

.method public sendPermissionResult(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/coreapps/PermissionActivity;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
