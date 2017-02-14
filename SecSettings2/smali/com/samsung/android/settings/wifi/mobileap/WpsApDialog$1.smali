.class Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WpsApDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;-><init>(Landroid/content/Context;ILjava/lang/String;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
