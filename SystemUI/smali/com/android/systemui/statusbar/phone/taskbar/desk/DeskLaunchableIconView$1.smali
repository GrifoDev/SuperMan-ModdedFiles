.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$1;
.super Ljava/lang/Object;
.source "DeskLaunchableIconView.java"

# interfaces
.implements Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverPopupPreShow()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;->shouldShowTooltip(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
