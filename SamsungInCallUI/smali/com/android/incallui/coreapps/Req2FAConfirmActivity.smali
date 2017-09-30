.class public Lcom/android/incallui/coreapps/Req2FAConfirmActivity;
.super Landroid/app/Activity;


# instance fields
.field confirm2FA:Landroid/widget/Button;

.field refuse2FA:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkPermission()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$5;-><init>(Lcom/android/incallui/coreapps/Req2FAConfirmActivity;)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/incallui/coreapps/PermissionUtils;->permissionRequest(Landroid/content/Context;[Ljava/lang/String;Lcom/android/incallui/coreapps/PermissionInterface;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->checkPermission()V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mn"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$1;-><init>(Lcom/android/incallui/coreapps/Req2FAConfirmActivity;)V

    new-instance v3, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$2;-><init>(Lcom/android/incallui/coreapps/Req2FAConfirmActivity;)V

    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->confirm2FA:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->confirm2FA:Landroid/widget/Button;

    new-instance v4, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$3;-><init>(Lcom/android/incallui/coreapps/Req2FAConfirmActivity;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000fd

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->refuse2FA:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->refuse2FA:Landroid/widget/Button;

    new-instance v3, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$4;-><init>(Lcom/android/incallui/coreapps/Req2FAConfirmActivity;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
