.class Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GearRebootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/GearRebootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GearSettingsObserver"
.end annotation


# instance fields
.field mColorUri:Landroid/net/Uri;

.field mVisibilityUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/GearRebootView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/GearRebootView;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/GearRebootView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/GearRebootView;->access$000(Lcom/android/systemui/statusbar/phone/GearRebootView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->mVisibilityUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/GearRebootView;->access$100(Lcom/android/systemui/statusbar/phone/GearRebootView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->mColorUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->mVisibilityUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/GearRebootView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/GearRebootView;->access$200(Lcom/android/systemui/statusbar/phone/GearRebootView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->mColorUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/GearRebootView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/GearRebootView;->access$300(Lcom/android/systemui/statusbar/phone/GearRebootView;)V

    goto :goto_0
.end method
