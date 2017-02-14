.class Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->-wrap0(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
