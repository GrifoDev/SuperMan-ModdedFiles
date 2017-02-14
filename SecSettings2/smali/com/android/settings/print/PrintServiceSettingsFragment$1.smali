.class Lcom/android/settings/print/PrintServiceSettingsFragment$1;
.super Landroid/database/DataSetObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-get4(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-get2(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_1

    if-lez v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-set0(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-get2(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->invalidateOptionsMenuIfNeeded()V

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-wrap1(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method
