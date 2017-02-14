.class public Lcom/android/settings/ColorModePreference;
.super Landroid/preference/SwitchPreference;
.source "ColorModePreference.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ColorModePreference$ColorTransformDescription;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ColorModePreference$ColorTransformDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/settings/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public getTransformsCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    iget-object v1, p0, Lcom/android/settings/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-static {v0}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-get1(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)Landroid/view/Display$ColorTransform;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/Display;->requestColorTransform(Landroid/view/Display$ColorTransform;)V

    iget-object v1, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ColorModePreference;->mCurrentIndex:I

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public updateCurrentAndSupported()V
    .locals 15

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v11, 0x1

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v10, v12}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ColorModePreference;->mDisplay:Landroid/view/Display;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x1070051

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    const v10, 0x7f0c0023

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0c0024

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v10, v9

    if-ge v3, v10, :cond_1

    aget v10, v9, v3

    if-eq v10, v14, :cond_0

    if-eq v3, v11, :cond_0

    new-instance v1, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    invoke-direct {v1, v13}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;-><init>(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)V

    aget v10, v9, v3

    invoke-static {v1, v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-set0(Lcom/android/settings/ColorModePreference$ColorTransformDescription;I)I

    aget-object v10, v8, v3

    invoke-static {v1, v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-set2(Lcom/android/settings/ColorModePreference$ColorTransformDescription;Ljava/lang/String;)Ljava/lang/String;

    aget-object v10, v2, v3

    invoke-static {v1, v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-set1(Lcom/android/settings/ColorModePreference$ColorTransformDescription;Ljava/lang/String;)Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getSupportedColorTransforms()[Landroid/view/Display$ColorTransform;

    move-result-object v7

    const/4 v3, 0x0

    :goto_1
    array-length v10, v7

    if-ge v3, v10, :cond_4

    const/4 v5, 0x0

    :goto_2
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    invoke-static {v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-get0(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)I

    move-result v10

    aget-object v13, v7, v3

    invoke-virtual {v13}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v13

    if-ne v10, v13, :cond_3

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    invoke-static {v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-get1(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)Landroid/view/Display$ColorTransform;

    move-result-object v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    aget-object v13, v7, v3

    invoke-static {v10, v13}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-set3(Lcom/android/settings/ColorModePreference$ColorTransformDescription;Landroid/view/Display$ColorTransform;)Landroid/view/Display$ColorTransform;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_3
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    invoke-static {v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-get1(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)Landroid/view/Display$ColorTransform;

    move-result-object v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getColorTransform()Landroid/view/Display$ColorTransform;

    move-result-object v0

    iput v14, p0, Lcom/android/settings/ColorModePreference;->mCurrentIndex:I

    const/4 v3, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    invoke-static {v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->-get0(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v13

    if-ne v10, v13, :cond_8

    iput v3, p0, Lcom/android/settings/ColorModePreference;->mCurrentIndex:I

    :cond_7
    iget v10, p0, Lcom/android/settings/ColorModePreference;->mCurrentIndex:I

    if-ne v10, v11, :cond_9

    move v10, v11

    :goto_5
    invoke-virtual {p0, v10}, Lcom/android/settings/ColorModePreference;->setChecked(Z)V

    return-void

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v10, v12

    goto :goto_5
.end method
