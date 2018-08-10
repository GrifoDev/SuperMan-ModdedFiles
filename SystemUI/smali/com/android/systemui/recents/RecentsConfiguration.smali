.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/PluginRecentsConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLOR_PRIMARY:I


# instance fields
.field public blockTouchAction:Z

.field public colorPrimary:I

.field public currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

.field public fakeShadows:Z

.field public forceOpacity:Z

.field public final hasNavigationBar:Z

.field public isGridEnabled:Z

.field public final isLargeScreen:Z

.field public final isXLargeScreen:Z

.field private final mAppContext:Landroid/content/Context;

.field public mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

.field public final smallestWidth:I

.field public svelteLevel:I

.field public useLightOnPrimaryColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xf5

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->DEFAULT_COLOR_PRIMARY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v3}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    sget v3, Lcom/android/systemui/recents/RecentsConfiguration;->DEFAULT_COLOR_PRIMARY:I

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useLightOnPrimaryColor:Z

    new-instance v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    invoke-direct {v3}, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    const v3, 0x7f0b0072

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const-string/jumbo v3, "ro.recents.grid"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDeviceSmallestWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    iget v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v6, 0x44160000    # 600.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    if-lt v3, v6, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    iget v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v6, 0x44340000    # 720.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    if-lt v3, v6, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateLayoutType()V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsActivityLaunchState:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsActivityCurrentState:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " layout="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " visible="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " option="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->option:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, " layoutType="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layoutType:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, " animating="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->animating:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "hasNavigationBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " forceOpacity="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " blockTouchAction="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "OpenTheme:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  colorPrimary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " useLightOnPrimaryColor="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useLightOnPrimaryColor:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    return-void
.end method

.method public getColorPrimary()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    return v0
.end method

.method public getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/systemui/recents/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    :goto_1
    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/recents/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    sget-object v2, Lcom/android/systemui/recents/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    :goto_2
    return-object v2

    :cond_3
    sget-object v2, Lcom/android/systemui/recents/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_2
.end method

.method public getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    return-object v0
.end method

.method public bridge synthetic getLaunchState()Lcom/samsung/systemui/splugins/recents/PluginRecentsActivityLaunchState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    return-object v0
.end method

.method public isAppListVisible()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInLockTaskEditMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListTypeLayout()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layoutType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecentListVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSwitchAnimating()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->animating:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isTabletTypeLayout()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layoutType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbnailLayout()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layoutType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setInLockTaskEditMode(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLayoutType()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getLayoutPreference()Lcom/android/systemui/recents/model/LayoutTypePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/LayoutTypePreference;->restoreLayoutType()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layoutType:I

    return-void
.end method

.method public updatePrimaryColor(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isOpenThemeApplied()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106015e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    iget v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useLightOnPrimaryColor:Z

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/systemui/recents/RecentsConfiguration;->DEFAULT_COLOR_PRIMARY:I

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useLightOnPrimaryColor:Z

    goto :goto_1
.end method
