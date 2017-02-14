.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->isAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "Wifi Captive Portal Dialog - OKAY BTN pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    return-void
.end method
