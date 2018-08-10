.class Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$2;
.super Ljava/lang/Object;
.source "SecListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

.field final synthetic val$mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$2;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    iput-object p2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$2;->val$mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$2;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$2;->val$mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
