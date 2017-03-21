.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "DozeParameters"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "  DozeParameters:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    getDisplayStateSupported(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    getPulseDuration(pickup=false): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "    getPulseDuration(pickup=true): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "    getPulseInDuration(pickup=false): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "    getPulseInDuration(pickup=true): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "    getPulseInVisibleDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "    getPulseOutDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "    getPulseOnSigMotion(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    getVibrateOnSigMotion(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnSigMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    getPulseOnPickup(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnPickup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    getVibrateOnPickup(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnPickup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    getProxCheckBeforePulse(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    getPulseOnNotifications(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnNotifications()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    getPulseSchedule(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseSchedule()Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "    getPulseScheduleResets(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseScheduleResets()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "    getPickupVibrationThreshold(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "    getPickupPerformsProxCheck(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupPerformsProxCheck()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getDisplayStateSupported()Z
    .locals 2

    const-string/jumbo v0, "doze.display.supported"

    const v1, 0x7f120018

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPickupPerformsProxCheck()Z
    .locals 2

    const-string/jumbo v0, "doze.pickup.proxcheck"

    const v1, 0x7f12001d

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    const-string/jumbo v0, "doze.pickup.vibration.threshold"

    const v1, 0x7f0c005c

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getProxCheckBeforePulse()Z
    .locals 2

    const-string/jumbo v0, "doze.pulse.proxcheck"

    const v1, 0x7f12001b

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseDuration(Z)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPulseInDuration(Z)I
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "doze.pulse.duration.in.pickup"

    const v1, 0x7f0c005e

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "doze.pulse.duration.in"

    const v1, 0x7f0c005d

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getPulseOnNotifications()Z
    .locals 2

    const-string/jumbo v0, "doze.pulse.notifications"

    const v1, 0x7f12001c

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseOnPickup()Z
    .locals 2

    const-string/jumbo v0, "doze.pulse.pickup"

    const v1, 0x7f12001a

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "doze_pulse_pickup"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    const-string/jumbo v0, "doze.pulse.sigmotion"

    const v1, 0x7f120019

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseOutDuration()I
    .locals 2

    const-string/jumbo v0, "doze.pulse.duration.out"

    const v1, 0x7f0c0060

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseSchedule()Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    .locals 3

    const-string/jumbo v1, "doze.pulse.schedule"

    const v2, 0x7f0f022c

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->-get0(Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->parse(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    goto :goto_0
.end method

.method public getPulseScheduleResets()I
    .locals 2

    const-string/jumbo v0, "doze.pulse.schedule.resets"

    const v1, 0x7f0c005b

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration()I
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doze_timeout"

    const v3, 0xe74

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVibrateOnPickup()Z
    .locals 2

    const-string/jumbo v0, "doze_vibrate_pickup"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVibrateOnSigMotion()Z
    .locals 2

    const-string/jumbo v0, "doze.vibrate.sigmotion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
