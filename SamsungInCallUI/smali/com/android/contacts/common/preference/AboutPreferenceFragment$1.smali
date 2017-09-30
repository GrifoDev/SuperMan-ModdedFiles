.class Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;
.super Ljava/lang/Object;

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
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Landroid/preference/Preference;

.field final synthetic c:Lcom/android/contacts/common/preference/AboutPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->c:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    iput-object p2, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->a:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->b:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->a:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->c:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    const-string v1, "http://www.google.com/policies/privacy"

    invoke-static {v0, v1}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->a(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->b:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->c:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    const-string v1, "http://www.google.com/policies/terms"

    invoke-static {v0, v1}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->a(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->c:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;->c:Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    const v2, 0x7f09067b

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
