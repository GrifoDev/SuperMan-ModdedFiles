.class public Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;
.super Ljava/lang/Object;
.source "SVirtualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
    }
.end annotation


# static fields
.field private static mVirtualScreenAvailable:Z

.field private static mVirtualScreenAvailableChecked:Z


# instance fields
.field private mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailable:Z

    sput-boolean v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailableChecked:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    return-void
.end method

.method private isVirtualScreenAvailable()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailableChecked:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailable:Z

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;-><init>()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->initialized()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailable:Z

    :cond_1
    sput-boolean v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailableChecked:Z

    sget-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailable:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bindVirtualScreen()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->bindVirtualScreen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffset()Landroid/graphics/Point;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->isMoving()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOffset(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(IIZ)Z

    move-result v0

    return v0
.end method

.method public setOffset(IIZ)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->setOffset(IIZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public unBindVirtualScreen()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->unBindVirtualScreen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateVirtualScreen(Landroid/graphics/Rect;I)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->updateVirtualScreen(Landroid/graphics/Rect;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
