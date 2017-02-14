.class Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v2}, Lcom/android/settings/applications/AppStorageSettings;->-get0(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppStorageSettings;->-get0(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
