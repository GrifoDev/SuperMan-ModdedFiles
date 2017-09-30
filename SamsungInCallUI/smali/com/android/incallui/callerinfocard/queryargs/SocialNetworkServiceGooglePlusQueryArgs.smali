.class public Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;


# static fields
.field private static final ACTION_GOOGLEPLUS_UPDATED:Ljava/lang/String; = "com.sec.android.app.sns.profile.ACTION_GOOGLEPLUS_UPDATED"

.field public static final AUTHORITY:Ljava/lang/String; = "status_stream"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SocialNetworkServiceGooglePlusQueryArgs"

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sns3.sp.googleplus/status_stream"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$1;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$1;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mUri:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "message"

    aput-object v1, v0, v3

    const-string v1, "media_url"

    aput-object v1, v0, v4

    const-string v1, "timestamp_utc"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "likes_count"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "comments_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "reshares_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v0, "from_id=? AND timestamp_utc>=?"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mSelection:Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sourceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "g:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v3

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    const-string v0, "timestamp_utc DESC LIMIT 1"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mOrderBy:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$2;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$2;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "SocialNetworkServiceGooglePlusQueryArgs"

    const-string v1, "registerReceiver"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.sns.profile.ACTION_GOOGLEPLUS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "SocialNetworkServiceGooglePlusQueryArgs"

    const-string v1, "unregisterReceiver"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
