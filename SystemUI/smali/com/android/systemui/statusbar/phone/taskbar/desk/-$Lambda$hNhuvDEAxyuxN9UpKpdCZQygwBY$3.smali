.class final synthetic Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f3:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f0:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f1:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->lambda$-com_android_systemui_statusbar_phone_taskbar_desk_DeskPanelViewNotification_43177(Ljava/lang/String;III)V

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f0:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f1:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$hNhuvDEAxyuxN9UpKpdCZQygwBY$3;->$m$0()V

    return-void
.end method
