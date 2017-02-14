.class Lcom/android/server/notification/EasyMuteController$2;
.super Landroid/app/INotificationPlayerOnCompletionListener$Stub;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/EasyMuteController;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0}, Landroid/app/INotificationPlayerOnCompletionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    const-string/jumbo v0, "EasyMuteController"

    const-string/jumbo v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->-get2(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_0
    return-void
.end method
