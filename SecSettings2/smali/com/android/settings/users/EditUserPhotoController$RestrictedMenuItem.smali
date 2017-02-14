.class final Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictedMenuItem"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/Runnable;

.field private final mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mContext:Landroid/content/Context;

.field private final mIsRestrictedByBase:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAction:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, v0}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mIsRestrictedByBase:Z

    return-void
.end method


# virtual methods
.method final doAction()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method final isRestrictedByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isRestrictedByBase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mIsRestrictedByBase:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
