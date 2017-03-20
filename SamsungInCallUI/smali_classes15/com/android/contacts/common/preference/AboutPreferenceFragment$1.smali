.class Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;
.super Ljava/lang/Object;
.source "AboutPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/preference/AboutPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

.field final synthetic val$privacyPolicyPreference:Landroid/preference/Preference;

.field final synthetic val$termsOfServicePreference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    iput-object p2, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->val$privacyPolicyPreference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->val$termsOfServicePreference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->val$privacyPolicyPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    const-string v2, "http://www.google.com/policies/privacy"

    # invokes: Lcom/android/contacts/common/preference/AboutPreferenceFragment;->startActivityForUrl(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->access$000(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->val$termsOfServicePreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    const-string v2, "http://www.google.com/policies/terms"

    # invokes: Lcom/android/contacts/common/preference/AboutPreferenceFragment;->startActivityForUrl(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->access$000(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    const v3, 0x7f0905a5

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
