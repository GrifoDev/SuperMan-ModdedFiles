.class public Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;
.super Ljava/lang/Object;
.source "PluginTaskDescription.java"


# instance fields
.field mInstance:Landroid/app/ActivityManager$TaskDescription;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->mInstance:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->mInstance:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getIconFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->mInstance:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInMemoryIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->mInstance:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->mInstance:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->mInstance:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    return v0
.end method
