.class Lcom/android/launcher2/BadgeSettingsFragment$2;
.super Ljava/lang/Object;
.source "BadgeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/BadgeSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/BadgeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/BadgeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    # getter for: Lcom/android/launcher2/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$200(Lcom/android/launcher2/BadgeSettingsFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    # getter for: Lcom/android/launcher2/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$200(Lcom/android/launcher2/BadgeSettingsFragment;)Landroid/widget/Switch;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    # invokes: Lcom/android/launcher2/BadgeSettingsFragment;->refreshAllAppItems(Z)V
    invoke-static {v1, v0}, Lcom/android/launcher2/BadgeSettingsFragment;->access$300(Lcom/android/launcher2/BadgeSettingsFragment;Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
