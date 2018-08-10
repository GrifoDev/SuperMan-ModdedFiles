.class public Lcom/android/systemui/tuner/ClockPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "ClockPreference.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Ljava/lang/String;

.field private mClockEnabled:Z

.field private mHasSeconds:Z

.field private mHasSetValue:Z

.field private mReceivedClock:Z

.field private mReceivedSeconds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x10409db

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "seconds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "disabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClockPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->onAttached()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "clock_seconds"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onDetached()V
    .locals 1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->onDetached()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedClock:Z

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSetValue:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedSeconds:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSetValue:Z

    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSeconds:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "seconds"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClockPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "clock_seconds"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedSeconds:Z

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSeconds:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClockPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClockPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "clock_seconds"

    const-string/jumbo v1, "seconds"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "icon_blacklist"

    const-string/jumbo v3, ","

    iget-object v4, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
