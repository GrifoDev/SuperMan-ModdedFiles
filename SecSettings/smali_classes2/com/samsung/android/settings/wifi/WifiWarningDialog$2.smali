.class Lcom/samsung/android/settings/wifi/WifiWarningDialog$2;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->-wrap0(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    return-void
.end method
