.class Lcom/android/settings/notification/OtherSoundSettings$3$1;
.super Ljava/lang/Object;
.source "OtherSoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/OtherSoundSettings$3;->setSetting(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/OtherSoundSettings$3;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/OtherSoundSettings$3;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/OtherSoundSettings$3$1;->this$1:Lcom/android/settings/notification/OtherSoundSettings$3;

    iput-object p2, p0, Lcom/android/settings/notification/OtherSoundSettings$3$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/notification/OtherSoundSettings$3$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/notification/OtherSoundSettings$3$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/OtherSoundSettings$3$1;->val$value:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method
