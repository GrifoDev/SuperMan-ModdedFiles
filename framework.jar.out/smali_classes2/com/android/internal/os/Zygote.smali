.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final ABI_32:Ljava/lang/String; = "armeabi"

.field public static final ABI_64:Ljava/lang/String; = "arm64"

.field public static final DEBUG_ALWAYS_JIT:I = 0x40

.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final ENHANCED_ZYGOTE_ASLR_DEBUG:Z = true

.field public static final ENHANCED_ZYGOTE_ASLR_TAG:Ljava/lang/String; = "Enhanced Zygote ASLR"

.field public static final MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_READ:I = 0x2

.field public static final MOUNT_EXTERNAL_WRITE:I = 0x3

.field public static final PROP_INIT_SVC_ZYGOTE_AGENT32:Ljava/lang/String; = "init.svc.zygote_agent32"

.field public static final PROP_INIT_SVC_ZYGOTE_AGENT64:Ljava/lang/String; = "init.svc.zygote_agent64"

.field public static final PROP_ZYGOTE_ASLR_AGENT32:Ljava/lang/String; = "zygote.aslr.agent32"

.field public static final PROP_ZYGOTE_ASLR_AGENT64:Ljava/lang/String; = "zygote.aslr.agent64"

.field public static final PROP_ZYGOTE_ASLR_ENABLE:Ljava/lang/String; = "ro.knox.enhance.zygote.aslr"

.field public static final SEINFO_REQUIRE_ORIGINAL_FORK:[Ljava/lang/String;

.field private static final VM_HOOKS:Ldalvik/system/ZygoteHooks;

.field public static final ZYGOTE_ASLR_AGENT_32_SOCKET:Ljava/lang/String; = "zygote_agent32"

.field public static final ZYGOTE_ASLR_AGENT_64_SOCKET:Ljava/lang/String; = "zygote_agent64"

.field public static final ZYGOTE_ASLR_FAILSAFE_ENABLED:Z

.field public static final isEnhancedZygoteASLREnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    const-string/jumbo v0, "ro.knox.enhance.zygote.aslr"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 106
    :goto_0
    sput-boolean v0, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "platform"

    aput-object v3, v0, v2

    const-string/jumbo v2, "platform:privapp"

    aput-object v2, v0, v1

    const-string/jumbo v1, "container"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 131
    sput-object v0, Lcom/android/internal/os/Zygote;->SEINFO_REQUIRE_ORIGINAL_FORK:[Ljava/lang/String;

    .line 136
    const-string/jumbo v1, "Enhanced Zygote ASLR"

    sget-boolean v0, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ENABLED!"

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ldalvik/system/ZygoteHooks;

    invoke-direct {v0}, Ldalvik/system/ZygoteHooks;-><init>()V

    sput-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    .line 30
    return-void

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    .line 136
    :cond_1
    const-string/jumbo v0, "DISABLED!"

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 6
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 279
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 280
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    const-string/jumbo v5, "\'\\\'\'"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static callPostForkChildHooks(IZLjava/lang/String;)V
    .locals 1
    .param p0, "debugFlags"    # I
    .param p1, "isSystemServer"    # Z
    .param p2, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 249
    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v0, p0, p1, p2}, Ldalvik/system/ZygoteHooks;->postForkChild(IZLjava/lang/String;)V

    .line 248
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .locals 4
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 261
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "/system/bin/sh"

    aput-object v2, v0, v3

    const-string/jumbo v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p0, v0, v2

    .line 263
    .local v0, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    invoke-static {v2, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static forkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "category"    # I
    .param p8, "accessInfo"    # I
    .param p9, "niceName"    # Ljava/lang/String;
    .param p10, "fdsToClose"    # [I
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "mountKnoxPoint"    # I

    .prologue
    .line 181
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 182
    invoke-static/range {p0 .. p13}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, "pid":I
    if-nez v0, :cond_0

    .line 187
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 190
    const-string/jumbo v1, "PostFork"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 192
    :cond_0
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 193
    return v0
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .locals 3
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .prologue
    .line 227
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 228
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 231
    .local v0, "pid":I
    if-nez v0, :cond_0

    .line 232
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 234
    :cond_0
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 235
    return v0
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method protected static native nativeUnmountStorageOnInit()V
.end method
