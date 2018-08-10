.class Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;)V

    return-void
.end method


# virtual methods
.method public onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockedStackMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onFocusStackChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onScreenFreezeAnimationFinished()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSnapWindowDismissed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
