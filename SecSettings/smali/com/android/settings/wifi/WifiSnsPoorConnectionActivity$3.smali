.class Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->showSnsPoorConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v1, "BACK key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->finish()V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
