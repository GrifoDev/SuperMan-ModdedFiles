.class Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;
.super Ljava/lang/Object;
.source "WpsApDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->dismiss()V

    return-void
.end method
