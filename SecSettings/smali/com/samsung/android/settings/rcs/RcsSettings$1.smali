.class Lcom/samsung/android/settings/rcs/RcsSettings$1;
.super Ljava/lang/Object;
.source "RcsSettings.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/rcs/RcsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/rcs/RcsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettings$1;->this$0:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings$1;->this$0:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->-get0(Lcom/samsung/android/settings/rcs/RcsSettings;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "register IMS Listener:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings$1;->this$0:Lcom/samsung/android/settings/rcs/RcsSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->-set0(Lcom/samsung/android/settings/rcs/RcsSettings;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings$1;->this$0:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->-get0(Lcom/samsung/android/settings/rcs/RcsSettings;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Deregister IMS Listener:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
