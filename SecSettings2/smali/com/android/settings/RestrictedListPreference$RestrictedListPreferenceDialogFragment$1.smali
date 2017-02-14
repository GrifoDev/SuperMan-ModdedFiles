.class Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "RestrictedListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {v4}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-wrap0(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings/RestrictedListPreference;

    move-result-object v3

    if-ltz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/RestrictedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-lt p2, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/RestrictedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/settings/RestrictedListPreference;->-wrap0(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {v4}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-wrap1(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v4, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {v4}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {v4}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-wrap0(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings/RestrictedListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/RestrictedListPreference;->isAutoClosePreference()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    const/4 v5, -0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {v4, p2}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    goto :goto_0
.end method
