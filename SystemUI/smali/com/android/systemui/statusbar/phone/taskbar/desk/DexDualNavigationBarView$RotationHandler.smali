.class final Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;
.super Landroid/os/Handler;
.source "DexDualNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView$RotationHandler;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DexDualNavigationBarView;I)V

    return-void
.end method
