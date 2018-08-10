.class Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v0}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->-get2(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v2}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->-get1(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v3}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->-get0(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->-set0(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v0}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->-get2(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v2}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->-get1(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v3}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->-get0(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->-set0(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;Z)Z

    goto :goto_0
.end method
