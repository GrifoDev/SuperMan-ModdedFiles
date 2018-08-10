.class Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$3;
.super Ljava/lang/Object;
.source "SharedDeviceKeyguardScrimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->hideScrim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$3;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SharedDeviceKeyguardScrimView"

    const-string/jumbo v1, " hide scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$3;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$3;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$3;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    iput-boolean v2, v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->isScrimVisible:Z

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$3;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    iget-object v0, v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mHandler:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;->removeMessages(I)V

    return-void
.end method
