.class Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment$1;->a:Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment$1;->a:Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->a()V

    const/4 v0, 0x1

    return v0
.end method
