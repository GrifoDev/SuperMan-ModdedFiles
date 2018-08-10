.class Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;->this$1:Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;->this$1:Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/TRoamingSettings;

    return-void
.end method
