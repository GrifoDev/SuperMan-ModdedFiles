.class public Lcom/android/incallui/coreapps/SampleSharePushListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;


# static fields
.field private static final KEY_CONTENT_TOKEN:Ljava/lang/String; = "key_content_token"

.field private static final KEY_UPDATED_MEDIA:Ljava/lang/String; = "key_updated_media"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SampleSharePushListener"

    sput-object v0, Lcom/android/incallui/coreapps/SampleSharePushListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteIncomingContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V
    .locals 0

    return-void
.end method

.method public onIncomingContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V
    .locals 0

    return-void
.end method

.method public onReceiveMessage(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->receiveMessage(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V

    return-void
.end method

.method public onUpdateContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V
    .locals 0

    return-void
.end method
