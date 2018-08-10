.class Lcom/samsung/android/settings/notification/NotificationsSubSettings$5$1;
.super Ljava/lang/Object;
.source "NotificationsSubSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/NotificationsSubSettings$5;->setSetting(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/NotificationsSubSettings$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$5$1;->this$1:Lcom/samsung/android/settings/notification/NotificationsSubSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get1()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    return-void
.end method
