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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-byte v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->BUTTON_ACTION_RELEASED:B

    iput-byte v0, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mIsPressed:B

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/samsung/android/desktopmode/KnoxDockStation;->addObserver(Lcom/samsung/android/desktopmode/KnoxDockButton;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setDockClickEventListner(Lcom/samsung/android/desktopmode/DockClickEventListner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mDockClickEventListner:Lcom/samsung/android/desktopmode/DockClickEventListner;

    return-void
.end method

.method public setPressed(B)V
    .locals 2

    iput-byte p1, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mIsPressed:B

    iget-object v0, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mDockClickEventListner:Lcom/samsung/android/desktopmode/DockClickEventListner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mDockClickEventListner:Lcom/samsung/android/desktopmode/DockClickEventListner;

    iget-byte v1, p0, Lcom/samsung/android/desktopmode/KnoxDockButton;->mIsPressed:B

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopmode/DockClickEventListner;->onClick(B)V

    :cond_0
    return-void
.end method
