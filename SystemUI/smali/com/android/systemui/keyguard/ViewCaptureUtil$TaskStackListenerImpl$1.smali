.class Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;
.super Landroid/os/AsyncTask;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->onTaskStackChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-set0(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z

    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v4, 0xbb8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get3(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get6(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-wrap1(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get1(Lcom/android/systemui/keyguard/ViewCaptureUtil;)I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-wrap3(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-wrap2(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V

    return-object v8

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get3(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v5, v5, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get2(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v6, v6, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v6}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get5(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->this$1:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    iget-object v7, v7, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v7}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get9(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-wrap0(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "ViewCaptureUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OutOfMemoryError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method
