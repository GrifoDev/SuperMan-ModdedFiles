.class Lcom/android/server/VibratorService$MuteInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MuteInfo"
.end annotation


# instance fields
.field private mAbortedVibrations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/VibratorService$AbortVibration;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnitudeType:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/VibratorService$MuteInfo;->getAbortedVibration()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/VibratorService$MuteInfo;Lcom/android/server/VibratorService$AbortVibration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$MuteInfo;->addAbortedVibration(Lcom/android/server/VibratorService$AbortVibration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private addAbortedVibration(Lcom/android/server/VibratorService$AbortVibration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAbortedVibration()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/VibratorService$AbortVibration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    invoke-static {}, Lcom/android/server/VibratorService;->-get15()Ljava/util/Hashtable;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/VibratorService;->-get3()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "VibratorService"

    const-string/jumbo v7, "binderDied() - MuteInfo"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->-get0()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/server/VibratorService$MuteCallInfo;->-get0()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/VibratorService;->-get15()Ljava/util/Hashtable;

    move-result-object v5

    sget-object v7, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v7}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    invoke-static {v7, v8}, Lcom/android/server/VibratorService;->-wrap0(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-static {v5, v9, v7, v8}, Lcom/android/server/VibratorService;->-wrap1(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    :cond_2
    invoke-static {}, Lcom/android/server/VibratorService;->-get15()Ljava/util/Hashtable;

    move-result-object v5

    sget-object v7, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v7}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    invoke-static {v7, v8}, Lcom/android/server/VibratorService;->-wrap0(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-static {v5, v9, v7, v8}, Lcom/android/server/VibratorService;->-wrap1(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    :cond_3
    invoke-static {}, Lcom/android/server/VibratorService;->-get15()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/VibratorService;->-get15()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/VibratorService$MuteInfo;

    iget-object v4, v5, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/VibratorService$MuteNotificationInfo;->-set0(Z)Z

    :cond_7
    if-nez v1, :cond_8

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/VibratorService$MuteCallInfo;->-set0(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
