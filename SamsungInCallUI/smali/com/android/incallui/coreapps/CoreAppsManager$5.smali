.class Lcom/android/incallui/coreapps/CoreAppsManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/coreapps/CoreAppsManager;->playMediaSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/coreapps/CoreAppsManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/CoreAppsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$5;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager$5;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->access$402(Lcom/android/incallui/coreapps/CoreAppsManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
