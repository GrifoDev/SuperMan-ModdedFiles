.class public Lcom/android/settings/development/ColorModePreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "ColorModePreference.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/development/ColorModePreference$ColorModeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public getColorModeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

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

    iget-object v1, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    iget-object v1, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->-get0(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Display;->requestColorMode(I)V

    iget-object v1, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public updateCurrentAndSupported()V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f030055

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const v7, 0x7f030056

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030054

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    aget v7, v0, v4

    if-eq v7, v10, :cond_0

    if-eq v4, v8, :cond_0

    new-instance v2, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;-><init>(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)V

    aget v7, v0, v4

    invoke-static {v2, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->-set0(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;I)I

    aget-object v7, v6, v4

    invoke-static {v2, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->-set2(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;

    aget-object v7, v3, v4

    invoke-static {v2, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->-set1(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getColorMode()I

    move-result v1

    iput v10, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    const/4 v4, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    invoke-static {v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->-get0(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I

    move-result v7

    if-ne v7, v1, :cond_3

    iput v4, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    :cond_2
    iget v7, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    if-ne v7, v8, :cond_4

    move v7, v8

    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/settings/development/ColorModePreference;->setChecked(Z)V

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v7, v9

    goto :goto_2
.end method
