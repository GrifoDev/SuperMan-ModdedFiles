.class Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$1;
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


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$1;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$1;->this$1:Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->dismiss()V

    return-void
.end method
