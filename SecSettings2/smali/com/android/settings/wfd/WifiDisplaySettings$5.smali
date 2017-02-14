.class Lcom/android/settings/wfd/WifiDisplaySettings$5;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-allshare-ServiceConnector$ServiceStateSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method private static synthetic -getcom-samsung-android-allshare-ServiceConnector$ServiceStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->-com-samsung-android-allshare-ServiceConnector$ServiceStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->-com-samsung-android-allshare-ServiceConnector$ServiceStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->values()[Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_CONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNABLE_TO_DISCONNECT:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->UNKNOWN:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->-com-samsung-android-allshare-ServiceConnector$ServiceStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .locals 3

    const-string/jumbo v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDlnaServiceConnectEventListener onCreated. state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/wfd/WifiDisplaySettings$5;->-getcom-samsung-android-allshare-ServiceConnector$ServiceStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    check-cast p1, Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set5(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get7(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/MediaServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set4(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get6(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get2(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get6(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get10(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get6(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get15(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    .locals 2

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "mDlnaServiceConnectEventListener onDeleted. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set5(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-void
.end method
