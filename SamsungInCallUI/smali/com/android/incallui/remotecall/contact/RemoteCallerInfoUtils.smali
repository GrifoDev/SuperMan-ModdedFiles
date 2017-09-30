.class public Lcom/android/incallui/remotecall/contact/RemoteCallerInfoUtils;
.super Ljava/lang/Object;


# static fields
.field private static final QUERY_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteCallerInfoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;
    .locals 5

    new-instance v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteCallerInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check phoneNumberUtils from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/remotecall/remotecall/RemoteCall;Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;
    .locals 3

    invoke-static {p0, p1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    move-result-object v0

    const-string v1, "RemoteCallerInfoUtils"

    const-string v2, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1, p0, v0, p2, p1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;

    return-object v0
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
