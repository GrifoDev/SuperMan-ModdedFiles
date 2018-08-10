.class Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public onDockedStackMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 0

    return-void
.end method

.method public onFocusStackChanged(I)V
    .locals 0

    return-void
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/MultiWindowSettingChangedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/MultiWindowSettingChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onScreenFreezeAnimationFinished()V
    .locals 0

    return-void
.end method

.method public onSnapWindowDismissed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
