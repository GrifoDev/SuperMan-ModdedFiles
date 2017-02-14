.class public Lcn/com/xy/sms/util/ParseOnePlusManager;
.super Lcn/com/xy/sms/util/ParseManager;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/com/xy/sms/util/ParseManager;-><init>()V

    return-void
.end method

.method public static isPinSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/util/ParseOnePlusManager;->parseSmsType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)I

    move-result v0

    if-eq v0, v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v5
.end method
