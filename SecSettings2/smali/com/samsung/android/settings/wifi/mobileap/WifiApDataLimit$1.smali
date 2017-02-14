.class Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$1;
.super Ljava/lang/Object;
.source "WifiApDataLimit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "WifiApDataLimit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)V

    return-void
.end method
