.class public Lcom/android/incallui/coreapps/PermissionUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;
    }
.end annotation


# static fields
.field public static final AGIF_PERMISSION_REQUEST_CODE:I = 0x3e8

.field public static final CHECK_ALREADY_PERMISSION:I = 0x0

.field public static final CHECK_ERROR_PERMISSION:I = -0x1

.field public static final CHECK_SUCCESS_PERMISSION:I = 0x1

.field public static final MyPREFERENCES:Ljava/lang/String; = "mypreferences"

.field private static final TAG:Ljava/lang/String; = "PermissionUtils"

.field static sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermissions(Landroid/app/Activity;[Ljava/lang/String;I)I
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    if-ge v0, v3, :cond_1

    const-string v0, "checkPermissions : permission is null."

    const-string v1, "PermissionUtils"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_3

    aget-object v5, p1, v0

    invoke-static {p0, v5}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermissions. PermissionList Size : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PermissionUtils"

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/incallui/coreapps/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, v0, p2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public static groupPermission([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const-string v0, "groupPermission."

    const-string v1, "PermissionUtils"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_5

    aget-object v3, p0, v0

    const-string v4, "STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "EXTERNAL_STORAGE"

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v3, p0, v0

    const-string v4, "PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "PHONE_STATE"

    goto :goto_1

    :cond_3
    aget-object v3, p0, v0

    const-string v4, "CONTACTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "CONTACTS"

    goto :goto_1

    :cond_4
    aget-object v3, p0, v0

    const-string v4, "SMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "SMS"

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupPermission. return size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PermissionUtils"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static permissionRequest(Landroid/content/Context;[Ljava/lang/String;Lcom/android/incallui/coreapps/PermissionInterface;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "PermissionUtils"

    const-string v1, "permissionRequest permissions is null"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->isCheckedPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/android/incallui/coreapps/PermissionInterface;->onPermissionGranted()V

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v3

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/PermissionsUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v2, "PermissionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {p2}, Lcom/android/incallui/coreapps/PermissionInterface;->onPermissionGranted()V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->addCheckedPermissions([Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;

    invoke-direct {v0, p2}, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;-><init>(Lcom/android/incallui/coreapps/PermissionInterface;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->setPermissionHandler(Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_8

    const/16 v2, 0x3e8

    invoke-static {v1, p1, v2}, Lcom/android/incallui/coreapps/PermissionUtils;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;I)I

    move-result v1

    const-string v2, "PermissionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permissionRequest activity result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v1, v6, :cond_7

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_7
    if-nez v1, :cond_1

    invoke-virtual {v0, v6}, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->addCheckedPermissions([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/coreapps/PermissionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "permission_interface"

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "permission_list"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    if-ge v0, v2, :cond_0

    const-string v0, "shouldShowRequestPermissionRationale : permission is null."

    const-string v2, "PermissionUtils"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldShowRequestPermissionRationale. permission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PermissionUtils"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, p1, v0

    invoke-static {p0, v3}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldShowRequestPermissionRationale. need to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PermissionUtils"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldShowRequestPermissionRationale. Never Ask Again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PermissionUtils"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mypreferences"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/coreapps/PermissionUtils;->sharedpreferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/incallui/coreapps/PermissionUtils;->sharedpreferences:Landroid/content/SharedPreferences;

    aget-object v4, p1, v0

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "shouldShowRequestPermissionRationale. FirstTime pass"

    const-string v4, "PermissionUtils"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/incallui/coreapps/PermissionUtils;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/coreapps/PermissionDialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "permission"

    invoke-static {p1}, Lcom/android/incallui/coreapps/PermissionUtils;->groupPermission([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public static verifyPermissions([I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p0

    if-ge v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, p0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, p0, v2

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
