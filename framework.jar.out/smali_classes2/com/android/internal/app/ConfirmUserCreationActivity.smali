.class public Lcom/android/internal/app/ConfirmUserCreationActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmUserCreationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateUser"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountOptions:Landroid/os/PersistableBundle;

.field private mAccountType:Ljava/lang/String;

.field private mCanProceed:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private checkUserCreationRequirements()Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v9, Ljava/lang/SecurityException;

    const-string/jumbo v10, "User Creation intent must be launched with startActivityForResult"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v10, "no_add_user"

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    xor-int/lit8 v6, v9, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v9

    xor-int/lit8 v5, v9, 0x1

    new-instance v0, Landroid/accounts/Account;

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v9

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v11, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int v1, v9, v10

    :goto_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_3

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    const/4 v9, 0x0

    return-object v9

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/SecurityException;

    const-string/jumbo v10, "Cannot find the calling package"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    const/4 v9, 0x0

    return-object v9

    :cond_4
    if-eqz v1, :cond_5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x1040ad7

    invoke-virtual {p0, v10, v9}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    return-object v7

    :cond_5
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x1040ad8

    invoke-virtual {p0, v10, v9}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    if-ne p2, v6, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CreateUser"

    const-string/jumbo v2, "Ok, creating user"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "CreateUser"

    const-string/jumbo v2, "Couldn\'t create user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/UserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "android.os.extra.USER_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->checkUserCreationRequirements()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setupAlert()V

    return-void
.end method
