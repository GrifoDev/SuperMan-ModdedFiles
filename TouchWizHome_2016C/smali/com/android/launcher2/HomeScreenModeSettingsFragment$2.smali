.class Lcom/android/launcher2/HomeScreenModeSettingsFragment$2;
.super Ljava/lang/Object;
.source "HomeScreenModeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeScreenModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$2;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$2;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->access$000(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$2;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->access$200(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$2;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->access$300(Lcom/android/launcher2/HomeScreenModeSettingsFragment;Z)V

    return-void
.end method
