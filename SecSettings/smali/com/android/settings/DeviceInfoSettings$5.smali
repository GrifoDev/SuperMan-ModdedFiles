.class Lcom/android/settings/DeviceInfoSettings$5;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->createDeviceInfoHeader()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings/DeviceInfoSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->showDialog(Ljava/lang/String;)V

    return-void
.end method
