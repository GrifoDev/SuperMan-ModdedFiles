.class public Lcom/sec/android/cover/BaseCoverController;
.super Ljava/lang/Object;
.source "BaseCoverController.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method public isCoverOpen()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v1, :cond_0

    const-string/jumbo v1, "BaseCoverController"

    const-string/jumbo v2, "isCoverOpen : mCoverState is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 0

    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 0

    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 0

    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
