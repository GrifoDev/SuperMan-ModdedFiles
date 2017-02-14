.class public Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;
.super Ljava/lang/Object;
.source "TapAndHoldDelayProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v2, "Tap and Hold Delay"

    const-string/jumbo v3, "Context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "Tap and Hold Delay"

    const-string/jumbo v3, "Unkown timeout length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    aget-object v0, v1, v2

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
