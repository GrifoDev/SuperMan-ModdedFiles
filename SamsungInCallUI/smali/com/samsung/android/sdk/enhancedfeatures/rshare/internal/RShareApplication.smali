.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;
.super Ljava/lang/Object;


# static fields
.field public static final RQUOTA_AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.quota"

.field public static final RSETTING_AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.setting"

.field public static final RSHAREPROVIDER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.rshare"

.field public static final RSHARE_AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.rshare"

.field private static mContext:Landroid/content/Context;

.field private static mQuotaDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

.field private static mSettingDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

.field private static mShareDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mQuotaDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mQuotaDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mQuotaDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    return-object v0
.end method

.method public static getRSettingDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mSettingDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mSettingDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mSettingDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    return-object v0
.end method

.method public static getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mShareDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mShareDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mShareDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->mContext:Landroid/content/Context;

    return-void
.end method
