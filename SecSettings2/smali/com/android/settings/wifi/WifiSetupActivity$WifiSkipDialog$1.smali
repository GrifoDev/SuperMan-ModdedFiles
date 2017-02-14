.class Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog$1;
.super Ljava/lang/Object;
.source "WifiSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog$1;->this$1:Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog$1;->this$1:Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->finish(I)V

    return-void
.end method
