.class final Lcom/android/settingslib/RestrictedLockUtils$2;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/RestrictedLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field final synthetic val$context:Landroid/content/Context;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
