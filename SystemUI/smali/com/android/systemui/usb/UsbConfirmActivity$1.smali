.class Lcom/android/systemui/usb/UsbConfirmActivity$1;
.super Ljava/lang/Object;
.source "UsbConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbConfirmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity$1;->this$0:Lcom/android/systemui/usb/UsbConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity$1;->this$0:Lcom/android/systemui/usb/UsbConfirmActivity;

    invoke-static {v0}, Lcom/android/systemui/usb/UsbConfirmActivity;->-get0(Lcom/android/systemui/usb/UsbConfirmActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
