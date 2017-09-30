.class public Lcom/samsung/android/sdk/ssf/common/util/CommonLog;
.super Ljava/lang/Object;


# static fields
.field private static final BUILD_TYPE_ENG:Ljava/lang/String; = "eng"

.field private static final DEBUG:I = 0x4

.field private static D_FLAG:Z = false

.field private static final ENG_VER:Z

.field private static final ERROR:I = 0x1

.field private static E_FLAG:Z = false

.field private static final INFO:I = 0x3

.field private static I_FLAG:Z = false

.field public static SEC_LOG:Z = false

.field private static final SHIP_BUILD:Z

.field public static final SSF_LOG_TAG:Ljava/lang/String; = "SSF "

.field protected static TAG:Ljava/lang/String; = null

.field private static final VERBOSE:I = 0x5

.field private static V_FLAG:Z = false

.field private static final WARN:I = 0x2

.field private static W_FLAG:Z

.field protected static final mShipBuild:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "ro.product_ship"

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->mShipBuild:Ljava/lang/String;

    sput-boolean v2, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    sput-boolean v2, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->D_FLAG:Z

    sput-boolean v2, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->I_FLAG:Z

    sput-boolean v2, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->W_FLAG:Z

    sput-boolean v2, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->V_FLAG:Z

    :try_start_0
    const-string v0, "android.util.secutil.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SEC_LOG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->ENG_VER:Z

    const-string v0, "true"

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->mShipBuild:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SHIP_BUILD:Z

    :goto_1
    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->ENG_VER:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SHIP_BUILD:Z

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SEC_LOG:Z

    if-nez v0, :cond_3

    :cond_1
    sput-boolean v3, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->V_FLAG:Z

    sput-boolean v3, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->D_FLAG:Z

    sput-boolean v3, Lcom/android/volley/VolleyLog;->DEBUG:Z

    :goto_2
    return-void

    :catch_0
    move-exception v0

    sput-boolean v3, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SEC_LOG:Z

    goto :goto_0

    :cond_2
    sput-boolean v3, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SHIP_BUILD:Z

    goto :goto_1

    :cond_3
    sput-boolean v2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->D_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->D_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->D_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->D_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->getStringFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->getStringFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->getStringFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->getStringFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->E_FLAG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getStringFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->I_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->I_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->I_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->I_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->secV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static secD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->secD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->secE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->secI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->secV(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->secW(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->V_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->V_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->V_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->V_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->W_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->W_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->W_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->W_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
