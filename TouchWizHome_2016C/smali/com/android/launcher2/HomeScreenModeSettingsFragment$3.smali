.class Lcom/android/launcher2/HomeScreenModeSettingsFragment$3;
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

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$3;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$3;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-static {v2}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->access$000(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$3;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-static {v2}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->access$200(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$3;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->access$300(Lcom/android/launcher2/HomeScreenModeSettingsFragment;Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
