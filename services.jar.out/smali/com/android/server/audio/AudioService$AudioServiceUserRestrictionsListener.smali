.class Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceUserRestrictionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v2, "no_unmute_microphone"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "no_unmute_microphone"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v0, p1}, Lcom/android/server/audio/AudioService;->-wrap64(Lcom/android/server/audio/AudioService;ZI)V

    :cond_0
    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eq v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, p1}, Lcom/android/server/audio/AudioService;->-wrap63(Lcom/android/server/audio/AudioService;ZII)V

    :cond_1
    return-void
.end method
