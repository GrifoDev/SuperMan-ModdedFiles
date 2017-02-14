.class Lcom/android/settings/bluetooth/DevicePickerActivity$3$2;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$2;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$2;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    iget-boolean v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$2;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$2;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get0(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$2;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
