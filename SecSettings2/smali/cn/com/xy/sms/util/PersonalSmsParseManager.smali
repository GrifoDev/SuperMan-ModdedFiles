.class public Lcn/com/xy/sms/util/PersonalSmsParseManager;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseMsgToNewContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseMsgToNewContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
