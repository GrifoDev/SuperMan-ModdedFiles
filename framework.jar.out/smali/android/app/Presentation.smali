.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "Presentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Presentation$1;,
        Landroid/app/Presentation$2;
    }
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mOwnerPackageName:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/app/Presentation;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/Presentation;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/Presentation;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1, p2, p3}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Landroid/app/Presentation;->mToken:Landroid/os/IBinder;

    new-instance v2, Landroid/app/Presentation$1;

    invoke-direct {v2, p0}, Landroid/app/Presentation$1;-><init>(Landroid/app/Presentation;)V

    iput-object v2, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v2, Landroid/app/Presentation$2;

    invoke-direct {v2, p0}, Landroid/app/Presentation$2;-><init>(Landroid/app/Presentation;)V

    iput-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Presentation;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Presentation;->mToken:Landroid/os/IBinder;

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x77

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const/16 v2, 0x7f5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0, v4}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private static createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .locals 7

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "outerContext must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "display must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_2

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10103c0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, v2, Landroid/util/TypedValue;->resourceId:I

    :cond_2
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerImpl;

    invoke-virtual {v3, v0}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/content/Context;)Landroid/view/WindowManagerImpl;

    move-result-object v1

    new-instance v4, Landroid/app/Presentation$3;

    invoke-direct {v4, v0, p2, v1}, Landroid/app/Presentation$3;-><init>(Landroid/content/Context;ILandroid/view/WindowManagerImpl;)V

    return-object v4
.end method

.method private handleDisplayChanged()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Presentation"

    const-string/jumbo v1, "Presentation is being dismissed because the display metrics have changed since it was created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    :cond_0
    return-void
.end method

.method private handleDisplayRemoved()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    return-void
.end method

.method private isConfigurationStillValid()Z
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayChanged()V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "displayID"

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ownerPackageName"

    iget-object v2, p0, Landroid/app/Presentation;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/Presentation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Presentation"

    const-string/jumbo v2, "Presentation is being dismissed because the display metrics have changed since it was created."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "displayID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/Presentation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
