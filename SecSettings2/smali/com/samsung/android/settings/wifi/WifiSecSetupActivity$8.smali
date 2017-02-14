.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->updateLayoutComponent(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-get5(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-get5(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-set0(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
