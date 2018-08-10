.class public Lcom/android/systemui/slimindicator/SlimIndicatorManager;
.super Ljava/lang/Object;
.source "SlimIndicatorManager.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field private static CACHED_VALUE_FALSE:I

.field private static CACHED_VALUE_RAW:I

.field private static CACHED_VALUE_TRUE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAddedTunable:Z

.field private mIsHomeCarrierDisabled:I

.field private mIsLockCarrierDisabled:I

.field private mMediator:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_FALSE:I

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_RAW:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_TRUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_RAW:I

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsHomeCarrierDisabled:I

    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_RAW:I

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsLockCarrierDisabled:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addTunableSlimIndicator()V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "----- SLIMINDICATOR -----------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  isPluginConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isPluginConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, "  mIsLockCarrierDisabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsLockCarrierDisabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "  mIsHomeCarrierDisabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsHomeCarrierDisabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 2

    const-string/jumbo v0, "SlimIndicatorManager"

    const-string/jumbo v1, "init SlimIndicatorManager !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mMediator:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    return-void
.end method

.method public isHomeCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isHomeCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHomeCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    iget v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsHomeCarrierDisabled:I

    sget v3, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_RAW:I

    if-eq v2, v3, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "slimindicator_home_carrier"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v2, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_TRUE:I

    :goto_0
    iput v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsHomeCarrierDisabled:I

    return v0

    :cond_1
    sget v2, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_FALSE:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsHomeCarrierDisabled:I

    sget v3, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_TRUE:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isLockCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isLockCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLockCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    iget v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsLockCarrierDisabled:I

    sget v3, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_RAW:I

    if-eq v2, v3, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "slimindicator_lock_carrier"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v2, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_TRUE:I

    :goto_0
    iput v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsLockCarrierDisabled:I

    const-string/jumbo v2, "SlimIndicatorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLockCarrierTextDisabled() has:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sget v2, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_FALSE:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsLockCarrierDisabled:I

    sget v3, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->CACHED_VALUE_TRUE:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isPluginConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mMediator:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mMediator:Lcom/android/systemui/slimindicator/SlimIndicatorMediator;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->isPluginConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isHomeCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isLockCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public removeTunableSlimIndicator()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    :cond_0
    return-void
.end method
