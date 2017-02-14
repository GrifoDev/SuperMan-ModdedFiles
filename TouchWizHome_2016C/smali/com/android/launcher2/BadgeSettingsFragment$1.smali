.class Lcom/android/launcher2/BadgeSettingsFragment$1;
.super Ljava/lang/Object;
.source "BadgeSettingsFragment.java"

# interfaces
.implements Lcom/android/launcher2/BadgeSettingsAdapter$OnChangeListener;


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

    iput-object p1, p0, Lcom/android/launcher2/BadgeSettingsFragment$1;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/view/View;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$1;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    # getter for: Lcom/android/launcher2/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;
    invoke-static {v1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$000(Lcom/android/launcher2/BadgeSettingsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;

    iget-object v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$1;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    # invokes: Lcom/android/launcher2/BadgeSettingsFragment;->updateAllSwitch()V
    invoke-static {v1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$100(Lcom/android/launcher2/BadgeSettingsFragment;)V

    return-void
.end method
