.class Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;
.super Ljava/lang/Object;
.source "SecListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_1

    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    iget-object v1, v1, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    iget-object v1, v1, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    iget-object v1, v1, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    iget-object v1, v1, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->dismiss()V

    return-void
.end method
