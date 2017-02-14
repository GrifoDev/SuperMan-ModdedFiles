.class Lcom/android/launcher2/HomeScreenModeSettingsFragment$5;
.super Ljava/lang/Object;
.source "HomeScreenModeSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenModeSettingsFragment;->showModeChangeDialog(I)V
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

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$5;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$5;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    # invokes: Lcom/android/launcher2/HomeScreenModeSettingsFragment;->changeHomeScreenMode()V
    invoke-static {v0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->access$400(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)V

    return-void
.end method
