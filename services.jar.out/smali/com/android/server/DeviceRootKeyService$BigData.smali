.class final Lcom/android/server/DeviceRootKeyService$BigData;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BigData"
.end annotation


# instance fields
.field private final INTENT_ACTION:Ljava/lang/String;

.field private final INTENT_FEATURE:Ljava/lang/String;

.field private final INTENT_PACKAGE:Ljava/lang/String;

.field private final INTENT_PERMISSION:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBigData:Ljava/lang/String;

.field private mContextFrameworkEnabled:Z

.field private mContextFrameworkWritingPerm:Z

.field private mExtra:Ljava/lang/String;

.field private mFeature:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/android/server/DeviceRootKeyService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->INTENT_FEATURE:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->INTENT_ACTION:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.providers.context"

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->INTENT_PACKAGE:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->INTENT_PERMISSION:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mType:I

    iput-object p3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mBigData:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkEnabled:Z

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->-get0()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkWritingPerm:Z

    return-void
.end method

.method private parseDrkBigData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private parseKeystoreBigData()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "android.security.keystore"

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mBigData:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mBigData:Ljava/lang/String;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v3, :cond_0

    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    return v3

    :cond_0
    return v4
.end method


# virtual methods
.method public sendIntent()I
    .locals 9

    const/16 v8, -0x15

    const/16 v6, -0x16

    const/16 v7, -0x17

    iget-boolean v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkWritingPerm:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string/jumbo v4, "DRKService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to sendIntent, mContextFrameworkEnabled = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], mContextFrameworkWritingPerm = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkWritingPerm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->-wrap4(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1
    iget v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mType:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string/jumbo v4, "DRKService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wrong bigdata type. mType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->-wrap4(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService$BigData;->parseDrkBigData()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string/jumbo v4, "DRKService"

    const-string/jumbo v5, "Failed to parseDrkBigData."

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->-wrap4(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService$BigData;->parseKeystoreBigData()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string/jumbo v4, "DRKService"

    const-string/jumbo v5, "Failed to parseKeystoreBigData."

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->-wrap4(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    if-eqz v3, :cond_4

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "app_id"

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "feature"

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "extra"

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.providers.context"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->-get0()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string/jumbo v4, "DRKService"

    const-string/jumbo v5, "Error occurs on sendIntent."

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->-wrap4(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v7

    :cond_4
    iget-object v3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string/jumbo v4, "DRKService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to sendIntent, mAppId = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], mFeature = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->-wrap4(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
