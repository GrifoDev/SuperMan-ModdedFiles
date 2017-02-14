.class Lcom/android/settings/bluetooth/DevicePickerActivity$2;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->showHelpDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get2(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-set1(Lcom/android/settings/bluetooth/DevicePickerActivity;Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-void
.end method
