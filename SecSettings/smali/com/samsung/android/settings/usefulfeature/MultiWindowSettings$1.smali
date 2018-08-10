.class Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;
.super Landroid/database/ContentObserver;
.source "MultiWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    goto :goto_0
.end method
