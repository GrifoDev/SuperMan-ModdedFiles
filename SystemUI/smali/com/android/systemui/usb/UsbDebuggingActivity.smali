.class public Lcom/android/systemui/usb/UsbDebuggingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbDebuggingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
    }
.end annotation


# instance fields
.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mCheckBoxText:Landroid/widget/TextView;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

.field private mKey:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/usb/UsbDebuggingActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_usb_UsbDebuggingActivity_4049(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b1a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return v3

    :cond_2
    return v2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    :goto_1
    :try_start_0
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Landroid/hardware/usb/IUsbManager;->allowUsbDebugging(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/hardware/usb/IUsbManager;->denyUsbDebugging()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v5, "UsbDebuggingActivity"

    const-string/jumbo v6, "Unable to notify Usb service"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v7, "service.adb.tcp.port"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-direct {v7, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "fingerprints"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "key"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-nez v7, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x7f120b72

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    const v8, 0x7f120b6f

    invoke-virtual {p0, v8, v7}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v7, 0x1040000

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string/jumbo v7, "UsbDebuggingActivity"

    const-string/jumbo v8, "onCreate use sec_always_use_checkbox"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0d0193

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0a0041

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v7, 0x7f0a00d9

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxText:Landroid/widget/TextView;

    const v8, 0x7f120b6e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxText:Landroid/widget/TextView;

    new-instance v8, Lcom/android/systemui/usb/UsbDebuggingActivity$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$1;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->setupAlert()V

    new-instance v2, Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;

    invoke-direct {v2}, Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
