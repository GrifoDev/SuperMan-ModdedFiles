.class public Lcom/absolute/android/logutil/LogUtilNoPS;
.super Lcom/absolute/android/logutil/LogUtil;
.source "SourceFile"


# static fields
.field private static final b:Z = false

.field private static final c:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/absolute/android/logutil/LogUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public logMessage(ILjava/lang/String;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/absolute/android/logutil/LogUtilNoPS;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    return-void

    :pswitch_2
    sget-object v0, Lcom/absolute/android/logutil/LogUtilNoPS;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    sget-object v0, Lcom/absolute/android/logutil/LogUtilNoPS;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    sget-object v0, Lcom/absolute/android/logutil/LogUtilNoPS;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
