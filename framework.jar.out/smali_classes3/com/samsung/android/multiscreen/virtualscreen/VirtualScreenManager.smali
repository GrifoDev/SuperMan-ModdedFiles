.class public Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;
.super Lcom/samsung/android/multiscreen/MultiScreenManager;
.source "VirtualScreenManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VirtualScreenManager"


# instance fields
.field private mVirtualScreenId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiscreen/MultiScreenManager;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    iget-object v0, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VirtualScreenManager"

    const-string/jumbo v1, "VirtualScreenManager created by Activity Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "VirtualScreenManager"

    const-string/jumbo v1, "VirtualScreenManager created by not Activity Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public attachToDefaultDisplay()Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->moveVirtualScreenToDisplay(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v3
.end method

.method public bindVirtualScreen()Z
    .locals 4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->bindVirtualScreen(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v3, 0x0

    return v3
.end method

.method public createVirtualScreen(Landroid/graphics/Rect;)I
    .locals 5

    const/4 v4, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "VirtualScreenManager"

    const-string/jumbo v3, "createVirtualScreen() Can not make VirtualScreen!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, p1, v3}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->createVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public getDisplayId()I
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->getVirtualScreenDisplayId(Landroid/os/IBinder;)I

    move-result v2

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->getVirtualScreenDisplayId(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, -0x1

    return v2
.end method

.method public getDisplayId(Landroid/graphics/Rect;I)I
    .locals 5

    const/4 v4, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "VirtualScreenManager"

    const-string/jumbo v3, "getDisplay() Can not make VirtualScreen!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v2

    invoke-interface {v2, v1, p1, p2}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->createVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public getDisplayIdByPackage(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->getDisplayIdByPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, -0x1

    return v1
.end method

.method public getOffset()Landroid/graphics/Point;
    .locals 3

    :try_start_0
    iget v1, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->getOffset(I)Landroid/graphics/Point;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->getOffset(I)Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    return-object v1
.end method

.method public isMoving()Z
    .locals 3

    :try_start_0
    iget v1, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->isMoving(I)Z

    move-result v1

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->isMoving(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public removeVirtualScreen()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->removeVirtualScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOffset(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->setOffset(IIZ)Z

    move-result v0

    return v0
.end method

.method public setOffset(IIZ)Z
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v0

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v2

    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    return v8
.end method

.method public startActivity(Landroid/content/Intent;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 5

    const-string/jumbo v2, "VirtualScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Bundle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v2

    invoke-interface {v2, v1, p1, p2}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->startDrag(Landroid/os/IBinder;I)Z

    move-result v2

    return v2

    :cond_0
    iget v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    if-lez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->startDrag(Landroid/os/IBinder;I)Z

    move-result v2

    return v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->startDrag(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v5
.end method

.method public unBindVirtualScreen()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->unBindVirtualScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public updateVirtualScreen(Landroid/graphics/Rect;I)Z
    .locals 3

    :try_start_0
    iget v1, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->setVirtualScreenBound(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/multiscreen/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->setVirtualScreenBound(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method
