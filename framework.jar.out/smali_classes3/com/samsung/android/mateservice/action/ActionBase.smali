.class public abstract Lcom/samsung/android/mateservice/action/ActionBase;
.super Ljava/lang/Object;
.source "ActionBase.java"


# static fields
.field public static final ATTR_ACCESS_GRANTED_PKG:I = 0x80000

.field public static final ATTR_ACCESS_PLATFORM_PKG:I = 0x40000

.field public static final ATTR_ACCESS_PRIVILEGED_PKG:I = 0x20000

.field public static final ATTR_ACCESS_SYSTEM_UID:I = 0x10000

.field public static final ATTR_TYPE_APP_SVC:I = 0x200000

.field public static final ATTR_TYPE_CLIENT:I = 0x400000

.field public static final ATTR_TYPE_SDK:I = 0x800000

.field public static final ATTR_TYPE_SYS_SVC:I = 0x100000

.field public static final BASE_AGENT_SYSTEM_UID:I = 0x210000

.field public static final BASE_SYS_SVC_PLATFORM_PKG:I = 0x140000

.field public static final BASE_SYS_SVC_PRIVILEGED_PKG:I = 0x120000

.field public static final BASE_SYS_SVC_SYSTEM_UID:I = 0x110000

.field public static final MASK_ATTR_ACCESS:I = 0xf0000

.field public static final MASK_ATTR_ACCESS_EXTRA:I = 0xf000

.field public static final MASK_ATTR_NUMBERING:I = 0xfff

.field public static final MASK_ATTR_RESERVED:I = -0x1000000

.field public static final MASK_ATTR_TYPE:I = -0x10000000

.field private static final TAG:Ljava/lang/String; = "ActionBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertSysActionToAppAction(I)I
    .locals 7

    const/high16 v2, 0x200000

    const/4 v6, 0x1

    const/4 v5, 0x0

    and-int v1, p0, v2

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ActionBase"

    const-string/jumbo v2, "convertSysActionToAppAction already converted 0x%x"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return p0

    :cond_0
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    const v1, -0x100001

    and-int v0, p0, v1

    or-int/2addr v0, v2

    const-string/jumbo v1, "ActionBase"

    const-string/jumbo v2, "convertSysActionToAppAction 0x%x(%d) to 0x%x(%d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static isValidAgentSvcActionFormat(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "ActionBase"

    const-string/jumbo v2, "invalid action [0x%x]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return v0

    :cond_2
    const/high16 v1, 0xf0000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    and-int/lit16 v1, p0, 0xfff

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidSysSvcActionFormat(I)Z
    .locals 11

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    const/high16 v7, -0x10000000

    const/high16 v8, 0xf0000

    const v9, 0xf000

    const/16 v10, 0xfff

    filled-new-array {v6, v7, v8, v9, v10}, [I

    move-result-object v2

    const/high16 v6, 0x100000

    const/high16 v7, 0x70000

    filled-new-array {v5, v6, v7, v5, v5}, [I

    move-result-object v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget v0, v2, v6

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    aget v8, v4, v1

    and-int v9, p0, v0

    if-ne v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_1
    aget v8, v4, v1

    and-int v9, p0, v0

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    and-int v8, p0, v0

    aget v9, v4, v1

    if-le v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v3, 0x1

    array-length v7, v2

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
.end method
