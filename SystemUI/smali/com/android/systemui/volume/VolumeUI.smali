.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# static fields
.field private static LOGD:Z


# instance fields
.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "VolumeUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    return-object v0
.end method

.method private setDefaultVolumeController()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VolumeUI"

    const-string/jumbo v1, "Registering default volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeComponent;->register()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "mEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeComponent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/volume/VolumeComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogComponent;-><init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->setDefaultVolumeController()V

    return-void
.end method
