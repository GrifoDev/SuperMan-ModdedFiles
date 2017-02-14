.class Lcom/android/settings/DeviceInfoSettings$2;
.super Landroid/database/ContentObserver;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v1, v1, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2, v0}, Lcom/android/settings/DeviceInfoSettings;->-wrap1(Lcom/android/settings/DeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
