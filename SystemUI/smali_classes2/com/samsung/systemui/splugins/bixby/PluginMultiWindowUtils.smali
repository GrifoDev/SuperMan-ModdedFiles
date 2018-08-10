.class public abstract Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;
.super Ljava/lang/Object;
.source "PluginMultiWindowUtils.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "multiwindow"
.end annotation


# static fields
.field protected static sPluginMultiWindowUtils:Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;->sPluginMultiWindowUtils:Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;

    return-object v0
.end method


# virtual methods
.method public abstract getConfiguration()I
.end method

.method public abstract getPackageNameOfTopActivity(I)Ljava/lang/String;
.end method

.method public abstract getStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I
.end method

.method public abstract getTaskIdsOfStackInfo(I)[I
.end method

.method public abstract isExistStackInfo(I)Z
.end method

.method public abstract isTopActivityRecent()Z
.end method

.method public abstract moveTaskToStack(IIZ)V
.end method
