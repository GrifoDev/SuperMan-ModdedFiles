.class public Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;
.super Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;
.source "RequestDesiredPermissionsActivity.java"


# static fields
.field private static final DESIRED_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->DESIRED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "started_permissions_activity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->DESIRED_PERMISSIONS:[Ljava/lang/String;

    const-class v2, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected getDesiredPermissions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->DESIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getRequiredPermissions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->DESIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->overridePendingTransition(II)V

    return-void
.end method
