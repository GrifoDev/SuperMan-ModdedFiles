.class Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;
.super Ljava/util/TimerTask;
.source "WpsApDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "WPSAP dialog"

    const-string/jumbo v1, "inside run"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
