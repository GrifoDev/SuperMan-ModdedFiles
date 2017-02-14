.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onAdvancedMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->onAdvancedMenuPressed()V

    return-void
.end method
