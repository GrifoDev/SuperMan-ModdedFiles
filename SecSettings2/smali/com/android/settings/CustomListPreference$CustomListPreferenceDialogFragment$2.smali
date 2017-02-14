.class Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$1:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$1:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {v0, p2}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    iget-object v0, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$1:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-static {v0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->-wrap0(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)Lcom/android/settings/CustomListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/CustomListPreference;->isAutoClosePreference()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$1:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
