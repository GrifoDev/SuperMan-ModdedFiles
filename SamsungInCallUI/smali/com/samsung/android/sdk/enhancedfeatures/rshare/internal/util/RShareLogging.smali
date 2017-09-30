.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;
.super Ljava/lang/Object;


# static fields
.field private static final ACTION_SERVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final CHECK_WIFI:Ljava/lang/String; = "Check_wifi"

.field private static final CONFIRM_POPUP:Ljava/lang/String; = "Confirm_popup"

.field private static final CONTACT_GROUP:Ljava/lang/String; = "Contacts_group"

.field private static final CONTACT_PERSONAL:Ljava/lang/String; = "Contacts_personal"

.field private static final DISMISS_NOTIFICATION:Ljava/lang/String; = "Dismiss_notification"

.field public static final FEATURE:Ljava/lang/String; = "RSHR"

.field private static final RECEIVE_NOTIFICATION:Ljava/lang/String; = "Receive_notification"

.field private static final RECENT_GROUP:Ljava/lang/String; = "Recent_group"

.field private static final RECENT_PERSONAL:Ljava/lang/String; = "Recent_personal"

.field private static final TAG:Ljava/lang/String;

.field private static mAppId:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mEnabled:Ljava/lang/Boolean;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->isSurveyModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mEnabled:Ljava/lang/Boolean;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->isSurveyModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mEnabled:Ljava/lang/Boolean;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mAppId:Ljava/lang/String;

    return-void
.end method

.method private static send(Landroid/content/ContentValues;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static send(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Landroid/content/ContentValues;)V

    :cond_0
    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Landroid/content/ContentValues;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "LOG disabled"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Landroid/content/ContentValues;)V

    :cond_0
    return-void
.end method

.method public static sendCheckWifi()V
    .locals 2

    const-string v0, "RSHR"

    const-string v1, "Check_wifi"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendConfirmPopup()V
    .locals 2

    const-string v0, "RSHR"

    const-string v1, "Confirm_popup"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendContactGroup()V
    .locals 2

    const-string v0, "RSHR"

    const-string v1, "Contacts_group"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendContactPersonal()V
    .locals 2

    const-string v0, "RSHR"

    const-string v1, "Contacts_personal"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendDismissNotification()V
    .locals 2

    const-string v0, "RSHR"

    const-string v1, "Dismiss_notification"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendReceiveNotification()V
    .locals 2

    const-string v0, "RSHR"

    const-string v1, "Receive_notification"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendRecentGroup()V
    .locals 2

    const-string v0, "RSHR"

    const-string v1, "Recent_group"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendRecentPersonal()V
    .locals 2

    const-string v0, "RSHR"

    const-string v1, "Recent_personal"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RShareLogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
