.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;
.super Landroid/os/ContainerStateReceiver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/os/ContainerStateReceiver;->onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/os/ContainerStateReceiver;->onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    return-void
.end method
