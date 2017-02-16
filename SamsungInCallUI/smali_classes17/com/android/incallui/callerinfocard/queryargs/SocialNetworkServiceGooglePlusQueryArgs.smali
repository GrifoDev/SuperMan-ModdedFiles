.class public Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
.source "SocialNetworkServiceGooglePlusQueryArgs.java"


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

    .prologue
    .line 37
    const-string v0, "content://com.sec.android.app.sns3.sp.googleplus/status_stream"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$1;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$1;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    .line 43
    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mUri:Landroid/net/Uri;

    .line 44
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "message"

    aput-object v2, v1, v4

    const-string v2, "media_url"

    aput-object v2, v1, v5

    const-string v2, "timestamp_utc"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "likes_count"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "comments_count"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "reshares_count"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "location_name"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mProjection:[Ljava/lang/String;

    .line 51
    const-string v1, "from_id=? AND timestamp_utc>=?"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mSelection:Ljava/lang/String;

    .line 52
    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    .end local p2    # "cookie":Ljava/lang/Object;
    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sourceId:Ljava/lang/String;

    .line 53
    .local v0, "sourceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "g:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v4

    const-wide/16 v2, 0x23

    .line 55
    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    .line 56
    const-string v1, "timestamp_utc DESC LIMIT 1"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mOrderBy:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    new-instance v1, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$2;

    invoke-direct {v1}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$2;-><init>()V

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    const-string v1, "SocialNetworkServiceGooglePlusQueryArgs"

    const-string v2, "registerReceiver"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.sns.profile.ACTION_GOOGLEPLUS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "SocialNetworkServiceGooglePlusQueryArgs"

    const-string v1, "unregisterReceiver"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    :cond_0
    return-void
.end method
