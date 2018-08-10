.class Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;
.super Ljava/lang/Object;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->loadAnimationResource(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "BluetoothFunctionSettingsBase"

    const-string/jumbo v1, "loadAnimationResource ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->val$resId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAnimResource:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
