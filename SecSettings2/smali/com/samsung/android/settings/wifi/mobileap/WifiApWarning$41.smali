.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "dontshowmemhsfirsttime"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap10(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void
.end method
