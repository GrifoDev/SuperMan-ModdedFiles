.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;,
        Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;,
        Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;,
        Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DUCKING_IN_APP_SDK_LEVEL:I = 0x19

.field static final ENFORCE_DUCKING:Z = true

.field static final ENFORCE_DUCKING_FOR_NEW:Z = true

.field static final ENFORCE_MUTING_FOR_RING_OR_CALL:Z = true

.field private static final MSG_DELAY_FOR_MYSPACE_EFFECT:I = 0x1

.field private static final RING_CALL_MUTING_ENFORCEMENT_DELAY_MS:I = 0x64

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field private static final mAudioFocusLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusOwnersForFocusPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyFocusOwnerOnDuck:Z

.field private mRingOrCallActive:Z

.field private mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/audio/MediaFocusControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)Ljava/util/Stack;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/MediaFocusControl;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->is2GTDMANetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    const/4 v0, 0x1

    const/16 v1, 0xe

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/PlayerFocusEnforcer;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    new-instance v0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-direct {v0, p0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set3(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "force change device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set3(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    new-instance v1, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-direct {v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    :goto_0
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    iput-object p4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    new-instance v1, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    invoke-direct {v1, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set2(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0, p3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/MediaFocusControl;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    goto :goto_0
.end method

.method private addMySpaceEffectDelay()V
    .locals 9

    sget-object v8, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    move-result-object v0

    sget-object v5, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x3e8

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 6

    const-string/jumbo v3, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "\nMultiFocusStack:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "size:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v0

    const-string/jumbo v3, "------------------------------"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v3, "------------------------------"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Ignored focus"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    :cond_2
    const-string/jumbo v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v3, :cond_4

    const-string/jumbo v3, "No external focus policy\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v4

    const-string/jumbo v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Notify on duck:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " In ring or call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "External focus policy: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", focus owners:\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private getAppDevice(I)I
    .locals 3

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/AudioService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService;->getAppDevice(I)I

    move-result v0

    const/16 v1, 0x400c

    and-int/lit16 v2, v0, 0x400c

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method protected static getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x3e8

    return v0

    :pswitch_2
    const/16 v0, 0x2bc

    return v0

    :pswitch_3
    const/16 v0, 0x1f4

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 2

    new-instance v0, Lcom/android/server/audio/MediaFocusControl$3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private is2GTDMANetwork(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1

    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPersonaId(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPersonaLocked(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    return v1
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isPersonaId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isPersonaLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v2, "Persona is locked"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    goto :goto_0
.end method

.method private propagateFocusLossFromGainToAll(I)V
    .locals 7

    const-string/jumbo v4, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "propagateFocusLossFromGainToAll, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v4}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v4}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1, v1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .locals 5

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v2, 0x2

    return v2
.end method

.method private removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V
    .locals 6

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    :cond_2
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_0
.end method

.method private removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.app.voicenote"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.app.voicerecorder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "FORCE_NONE for Media(Voice recorder FC)."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.app.dmb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "audioParam;DMB_FORCE_SPEAKER=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :cond_6
    return-void
.end method

.method private runAudioCheckerForRingOrCallAsync(Z)V
    .locals 1

    new-instance v0, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$2;->start()V

    return-void
.end method

.method private selectFocusStack(I)Ljava/util/Stack;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectFocusStack, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", appDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v4}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v2

    return-object v2

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 15

    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AudioFocus  abandonAudioFocus() from uid/pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v14, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v12, 0x0

    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p3

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get2(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_1
    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "abandonAudioFocus, clientId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v2

    if-ge v13, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v14

    throw v2
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v10

    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->selectFocusStack(I)Ljava/util/Stack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/AudioService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    iget-boolean v2, v2, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mHMTDocked:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get8(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/media/MySpaceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/media/MySpaceManager;

    move-result-object v3

    iget-object v3, v3, Landroid/media/MySpaceManager;->mMusicAttributes:Landroid/media/AudioAttributes;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set7(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z

    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "AudioFocus playMySpaceEffect MUSIC FADE IN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get2(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v2, :cond_7

    new-instance v1, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0

    return v2

    :cond_7
    :try_start_5
    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const-string/jumbo v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    and-int v11, v3, v2

    if-eqz v11, :cond_8

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    :cond_8
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz v11, :cond_c

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set13(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Landroid/os/IBinder;)Landroid/os/IBinder;

    if-eqz v11, :cond_a

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    monitor-exit v4

    return-void

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected checkSplitSoundAudioFocus()V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getSdkTarget()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get15(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/os/IBinder;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;II)I

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0, v4}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v0, v4}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set13(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Landroid/os/IBinder;)Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method protected discardAudioFocusOwner()V
    .locals 4

    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;)V

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    return v4

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v2

    return v4

    :cond_1
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1, p2}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getCurrentAudioFocusPackageName()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getGainRequestForCurrentAudioFocus()I
    .locals 2

    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUidForDevice(I)I
    .locals 5

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v1

    :cond_0
    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUidForDevice, uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method protected getUserIdForCurrentAudioFocus()I
    .locals 2

    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleExternalFocusGain(I)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleExternalFocusGain, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusRequester(IZ)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method public mutePlayersForCall([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    return-void
.end method

.method notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;ILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/FocusRequester;

    if-eqz v7, :cond_2

    invoke-virtual {v7, p3}, Lcom/android/server/audio/FocusRequester;->hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lcom/android/server/audio/FocusRequester;->release()V

    new-instance v4, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v4, p0, p4}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/android/server/audio/FocusRequester;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v10

    :cond_2
    if-eq p2, v10, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :cond_3
    new-instance v4, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v4, p0, p4}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/android/server/audio/FocusRequester;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2

    move-object v0, p1

    new-instance v1, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyOtherTopOfAudioFocusStack()V
    .locals 2

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x21

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {v6, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set12(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "do not register PhoneStateListener on NO_SIM state"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v6}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v6

    new-array v6, v6, [Landroid/telephony/PhoneStateListener;

    invoke-static {v3, v6}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;[Landroid/telephony/PhoneStateListener;)[Landroid/telephony/PhoneStateListener;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_1

    aget v1, v2, v5

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerPhoneStateListener mSimCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v7}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)[Landroid/telephony/PhoneStateListener;

    move-result-object v3

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/MediaFocusControl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v3, v0

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get18(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v6}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)[Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v3, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v3

    if-nez v3, :cond_3

    move v6, v4

    :goto_2
    if-nez v0, :cond_4

    move v3, v4

    :goto_3
    and-int/2addr v3, v6

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)[Landroid/telephony/PhoneStateListener;

    move-result-object v3

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/MediaFocusControl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v3, v0

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get18(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v6}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)[Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v3, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)[Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v9, v3, v0

    goto :goto_1

    :cond_6
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 26

    const-string/jumbo v5, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " AudioFocus  requestAudioFocus() from uid/pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " clientId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " req="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " flags=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "MediaFocusControl"

    const-string/jumbo v6, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v5, v7, v6, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    return v5

    :cond_1
    sget-object v24, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get2(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "MediaFocusControl"

    const-string/jumbo v6, "requestAudioFocus failed while call"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    monitor-exit v24

    return v5

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/MediaFocusControl;->selectFocusStack(I)Ljava/util/Stack;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    xor-int/lit8 v6, v5, 0x1

    const-string/jumbo v5, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_0
    and-int v17, v6, v5

    if-eqz v17, :cond_4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v5, :cond_8

    new-instance v3, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p2

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    :goto_1
    const/16 v18, 0x0

    const-string/jumbo v5, "com.android.server.telecom"

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/AudioService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    iget-boolean v5, v5, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSplitSound:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-object/from16 v25, v0

    new-instance v4, Lcom/android/server/audio/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p7

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    move-object/from16 v14, p0

    move/from16 v15, p8

    invoke-direct/range {v4 .. v15}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set13(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    const/4 v5, 0x1

    monitor-exit v24

    return v5

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    :cond_9
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    :cond_a
    const-string/jumbo v5, "com.android.server.telecom"

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    move-object/from16 v0, p5

    invoke-static {v5, v0}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v5

    if-nez v5, :cond_d

    and-int/lit8 v5, p7, 0x1

    if-nez v5, :cond_c

    const/16 v21, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;ILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    monitor-exit v24

    return v5

    :cond_c
    const/16 v18, 0x1

    :cond_d
    const/16 v22, 0x2

    const/4 v5, 0x2

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;ILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x2

    monitor-exit v24

    return v5

    :cond_e
    :try_start_4
    new-instance v11, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x0

    :try_start_5
    move-object/from16 v0, p3

    invoke-interface {v0, v11, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/AudioService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    iget-boolean v5, v5, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mHMTDocked:Z

    if-nez v5, :cond_10

    const-string/jumbo v5, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/media/MySpaceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MySpaceManager;->checkEnableCondition()Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/media/MySpaceManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v6}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/media/MySpaceManager;

    move-result-object v6

    iget-object v6, v6, Landroid/media/MySpaceManager;->mMusicAttributes:Landroid/media/AudioAttributes;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->addMySpaceEffectDelay()V

    const-string/jumbo v5, "MediaFocusControl"

    const-string/jumbo v6, "AudioFocus playMySpaceEffect MUSIC FADE OUT"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set7(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z

    :cond_10
    const/4 v5, 0x2

    move/from16 v0, p2

    if-eq v0, v5, :cond_11

    const/4 v5, 0x3

    move/from16 v0, p2

    if-eq v0, v5, :cond_11

    const/4 v5, 0x4

    move/from16 v0, p2

    if-eq v0, v5, :cond_11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const v6, 0x186a0

    div-int v23, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/audio/FocusRequester;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/FocusRequester;->getUserId()I

    move-result v5

    move/from16 v0, v23

    if-eq v5, v0, :cond_13

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    :cond_11
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/audio/FocusRequester;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v5

    move/from16 v0, p2

    if-ne v5, v0, :cond_14

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_14

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->resetFocusLossReceived()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_12
    const/4 v5, 0x1

    monitor-exit v24

    return v5

    :catch_0
    move-exception v16

    :try_start_7
    const-string/jumbo v5, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " binder death"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v5, 0x0

    monitor-exit v24

    return v5

    :cond_13
    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->isPersonaId(I)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->isPersonaLocked(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/FocusRequester;->getUserId()I

    move-result v5

    move/from16 v0, v23

    if-ne v5, v0, :cond_11

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "MediaFocusControl"

    const-string/jumbo v6, "Persona is locked"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v5}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v24

    throw v5

    :cond_14
    if-nez v18, :cond_15

    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/FocusRequester;->release()V

    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v5, v6, v0, v7}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object v19

    if-eqz v19, :cond_16

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/FocusRequester;->resetFocusLossReceived()V

    :cond_16
    if-nez v19, :cond_19

    new-instance v4, Lcom/android/server/audio/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p7

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    move-object/from16 v14, p0

    move/from16 v15, p8

    invoke-direct/range {v4 .. v15}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    :goto_3
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/FocusRequester;->setDevice(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/AudioService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    iget v5, v5, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIgnoreAudioFocusUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-ne v5, v6, :cond_1b

    const-string/jumbo v5, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignore AudioFocus for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0, v4}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/FocusRequester;->release()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5, v4}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v5, 0x1

    monitor-exit v24

    return v5

    :cond_19
    move-object/from16 v4, v19

    goto/16 :goto_3

    :cond_1a
    :try_start_a
    new-instance v4, Lcom/android/server/audio/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p7

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    move-object/from16 v14, p0

    move/from16 v15, p8

    invoke-direct/range {v4 .. v15}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    goto/16 :goto_4

    :cond_1b
    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0, v4}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    :cond_1c
    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v20

    if-eqz v20, :cond_1d

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_1d
    monitor-exit v24

    return v20

    :cond_1e
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_1f

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string/jumbo v5, "com.android.server.telecom"

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    :cond_20
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGainToAll(I)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    if-eqz v17, :cond_22

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_22
    monitor-exit v24

    const/4 v5, 0x1

    return v5
.end method

.method protected resetFocusLossReceived()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->resetFocusLossReceived()V

    :cond_0
    return-void
.end method

.method public setDevice(I)V
    .locals 14

    const/4 v13, 0x2

    if-nez p1, :cond_0

    const-string/jumbo v9, "MediaFocusControl"

    const-string/jumbo v10, "incorrect parameter"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v10, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v10

    const/16 v7, 0xd

    and-int/lit8 v9, p1, 0xd

    if-eqz v9, :cond_2

    :try_start_0
    const-string/jumbo v9, "MediaFocusControl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "force change device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v6

    move v5, p1

    if-ne v6, p1, :cond_3

    const-string/jumbo v9, "MediaFocusControl"

    const-string/jumbo v11, "setDevice, device doesn\'t change"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-void

    :cond_2
    and-int/lit16 v9, p1, 0x3f0

    if-eqz v9, :cond_1

    const/16 p1, 0x80

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v9, "MediaFocusControl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setDevice, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    const-string/jumbo v9, "MediaFocusControl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "move from default to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/audio/FocusRequester;->setDevice(I)V

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getDevice()I

    move-result v9

    if-ne v9, v6, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_5
    :try_start_2
    const-string/jumbo v9, "MediaFocusControl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "move from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to default"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, ""

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hasActiveTrackUID="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v9}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const/4 v3, 0x0

    const-string/jumbo v9, "TRUE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v9, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    invoke-direct {p0, v9, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v9

    if-eq v9, v13, :cond_a

    const/4 v9, 0x1

    invoke-direct {p0, v9, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V

    :cond_a
    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v9, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v9, p1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set3(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v10

    return-void
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return-void
.end method

.method setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected setIgnoreAudioFocus(IZ)V
    .locals 5

    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez p2, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusRequester(IZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    monitor-exit v2

    return-void

    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-static {v3, v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V

    return-void
.end method

.method public unmutePlayersForCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    return-void
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected unregisterPhoneStateListener(Landroid/content/Context;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get18(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)[Landroid/telephony/PhoneStateListener;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get18(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)[Landroid/telephony/PhoneStateListener;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-set11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I

    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call unregisterPhoneStateListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateFocusRequester(I)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string/jumbo v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFocusRequester, uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v8}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v8

    invoke-virtual {v8, p1, v11}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusRequester(IZ)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    const-string/jumbo v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "focusRequester.getClientId()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/audio/FocusRequester;->setDevice(I)V

    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v8}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I

    move-result v8

    if-ne v0, v8, :cond_5

    :cond_2
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v8}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    :goto_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v8}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/AudioService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasActiveTrackUID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "TRUE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "MediaFocusControl"

    const-string/jumbo v9, "pin app playing"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v8, v11, v2}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mSecGlobal:Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;

    invoke-static {v8}, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->-get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string/jumbo v8, "MediaFocusControl"

    const-string/jumbo v9, "pin app paused"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v11, v2}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    goto :goto_2

    :cond_7
    const-string/jumbo v8, "MediaFocusControl"

    const-string/jumbo v9, "MultiSound off"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v11, v2}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    goto :goto_2

    :cond_8
    return-void
.end method
