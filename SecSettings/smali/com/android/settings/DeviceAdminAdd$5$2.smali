.class Lcom/android/settings/DeviceAdminAdd$5$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceAdminAdd$5;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$5$2;->this$1:Lcom/android/settings/DeviceAdminAdd$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$5$2;->this$1:Lcom/android/settings/DeviceAdminAdd$5;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->continueRemoveAction(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
