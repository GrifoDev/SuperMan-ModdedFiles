.class Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment$2;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment$2;->this$1:Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment$2;->this$1:Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/TRoamingSettings$LTERoamingSetFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
