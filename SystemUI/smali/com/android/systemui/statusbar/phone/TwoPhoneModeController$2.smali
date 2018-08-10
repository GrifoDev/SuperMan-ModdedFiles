.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;
.super Landroid/database/ContentObserver;
.source "TwoPhoneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-wrap0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;I)V

    return-void
.end method
