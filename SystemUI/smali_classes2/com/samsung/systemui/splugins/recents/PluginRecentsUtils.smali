.class public abstract Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;
.super Ljava/lang/Object;
.source "PluginRecentsUtils.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# static fields
.field protected static sPluginRecentsUtils:Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;->sPluginRecentsUtils:Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;

    return-object v0
.end method


# virtual methods
.method public abstract getStackId(Landroid/app/ActivityManager$RecentTaskInfo;)I
.end method

.method public abstract getStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I
.end method

.method public abstract getUserHandleAll()Landroid/os/UserHandle;
.end method

.method public abstract getUserHandleMyUserId()I
.end method

.method public abstract getUserHandleSystem()Landroid/os/UserHandle;
.end method

.method public abstract isResizeableMode(I)Z
.end method

.method public abstract isVisible(Landroid/app/ActivityManager$RecentTaskInfo;)Z
.end method

.method public abstract setDockCreateMode(Landroid/app/ActivityOptions;I)V
.end method

.method public abstract setLaunchStackId(Landroid/app/ActivityOptions;I)V
.end method

.method public abstract supportsSplitScreenMultiWindow(Landroid/app/ActivityManager$RecentTaskInfo;)Z
.end method
