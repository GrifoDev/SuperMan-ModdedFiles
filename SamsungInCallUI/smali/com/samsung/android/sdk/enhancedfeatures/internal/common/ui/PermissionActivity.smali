.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;
.super Landroid/app/Activity;


# static fields
.field public static final KEY_PERMISSION_ARRAY:Ljava/lang/String; = "permission_list"

.field public static final KEY_PERMISSION_INTERFACE:Ljava/lang/String; = "permission_interface"

.field public static final PERMISSION_DENIED:I = 0x2710

.field public static final PERMISSION_GRANTED:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mPInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;

.field private mPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private requestPermission()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->sendPermissionResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->sendPermissionResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "onCreate"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permission_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mPermissions:[Ljava/lang/String;

    const-string v1, "permission_interface"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Empty permssions..."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->requestPermission()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->sendPermissionResult(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->finish()V

    return-void

    :cond_1
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->sendPermissionResult(I)V

    goto :goto_0
.end method

.method public sendPermissionResult(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionActivity;->mMessenger:Landroid/os/Messenger;

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
