.class public Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;
.super Landroid/widget/FrameLayout;
.source "StatusBarContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAttachedToWindow(). Cannot find root view, root="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/StatusBarContainer;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
