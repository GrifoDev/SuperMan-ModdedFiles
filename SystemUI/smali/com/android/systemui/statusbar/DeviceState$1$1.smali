.class Lcom/android/systemui/statusbar/DeviceState$1$1;
.super Ljava/lang/Object;
.source "DeviceState.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DeviceState$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/DeviceState$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DeviceState$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DeviceState$1$1;->this$1:Lcom/android/systemui/statusbar/DeviceState$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string/jumbo v0, "DeviceState"

    const-string/jumbo v1, "onConnected mImsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string/jumbo v0, "DeviceState"

    const-string/jumbo v1, "onDisconnected mImsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->-set0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    return-void
.end method
