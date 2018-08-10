.class Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$1;
.super Ljava/lang/Object;
.source "BixbyScriptPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "SetupWizardWifiScreen -> BixbyScriptPlayer"

    const-string/jumbo v1, "Connected to ISuwScriptPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-static {p2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->-set0(Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->-get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;)Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;->onScriptPlayerServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "SetupWizardWifiScreen -> BixbyScriptPlayer"

    const-string/jumbo v1, "Disconnected from ISuwScriptPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
