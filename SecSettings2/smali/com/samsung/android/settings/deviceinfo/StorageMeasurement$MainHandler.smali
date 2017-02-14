.class Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->-get2(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MainHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->-get2(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->onDetailsChanged(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    :cond_1
    return-void
.end method
