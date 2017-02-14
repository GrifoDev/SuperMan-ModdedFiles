.class public Lcom/android/settings/ConfirmLockPattern;
.super Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/ConfirmLockPattern$InternalActivity;,
        Lcom/android/settings/ConfirmLockPattern$Stage;
    }
.end annotation


# static fields
.field private static mFromPersonalPage:Z

.field private static mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get1()Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/settings/ConfirmLockPattern$Stage;)Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 0

    sput-object p0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    sput-object v0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
