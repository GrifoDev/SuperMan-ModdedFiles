.class public Lcom/samsung/android/desktopmode/KnoxDockButton;
.super Ljava/lang/Object;
.source "KnoxDockButton.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDockButton;


# instance fields
.field public mDockClickEventListner:Lcom/samsung/android/desktopmode/DockClickEventListner;

.field private mIsPressed:B


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopmode/KnoxDockStation;)V
    .locals 1
    .param p1, "station"    # Lcom/samsung/android/desktopmode/KnoxDockStation;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-byte v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->BUTTON_ACTION_RELEASED:B

    iput-byte v0, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mIsPressed:B

    .line 10
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1, p0}, Lcom/samsung/android/desktopmode/KnoxDockStation;->addObserver(Lcom/samsung/android/desktopmode/KnoxDockButton;)V

    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public setDockClickEventListner(Lcom/samsung/android/desktopmode/DockClickEventListner;)V
    .locals 0
    .param p1, "listner"    # Lcom/samsung/android/desktopmode/DockClickEventListner;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mDockClickEventListner:Lcom/samsung/android/desktopmode/DockClickEventListner;

    .line 16
    return-void
.end method

.method public setPressed(B)V
    .locals 2
    .param p1, "press"    # B

    .prologue
    .line 22
    iput-byte p1, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mIsPressed:B

    .line 23
    iget-object v0, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mDockClickEventListner:Lcom/samsung/android/desktopmode/DockClickEventListner;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mDockClickEventListner:Lcom/samsung/android/desktopmode/DockClickEventListner;

    iget-byte v1, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mIsPressed:B

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopmode/DockClickEventListner;->onClick(B)V

    .line 21
    :cond_0
    return-void
.end method
