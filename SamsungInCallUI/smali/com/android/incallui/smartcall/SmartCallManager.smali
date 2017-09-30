.class public Lcom/android/incallui/smartcall/SmartCallManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CALLER_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "phoneNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "imageUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reputationTypeCode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "reputationCategoryCode"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "managerMessage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "addressCity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "addressState"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "addressCountry"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reputationCategoryName"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "entityType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "businessText"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contentProviderName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contentProviderImageUrl"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contentProviderUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/smartcall/SmartCallManager;->DEFAULT_CALLER_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/smartcall/SmartCallManager;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/smartcall/SmartCallManager;->DEFAULT_CALLER_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/smartcall/SmartCallManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public queryCallerInfo(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryCallerInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/incallui/smartcall/SmartCallManager$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/incallui/smartcall/SmartCallManager$1;-><init>(Lcom/android/incallui/smartcall/SmartCallManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;)V

    invoke-virtual {v0}, Lcom/android/incallui/smartcall/SmartCallManager$1;->start()V

    return-void
.end method

.method public queryImageUri(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryImageUri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/incallui/smartcall/SmartCallManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/smartcall/SmartCallManager$2;-><init>(Lcom/android/incallui/smartcall/SmartCallManager;Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/smartcall/SmartCallManager$2;->start()V

    return-void
.end method

.method public report(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PHONE_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MESSAGE"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CATEGORY"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/incallui/smartcall/SmartCallContract;->SMART_CALL_URI:Landroid/net/Uri;

    const-string v3, "REPORT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL_report: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IllegalArgumentException "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
