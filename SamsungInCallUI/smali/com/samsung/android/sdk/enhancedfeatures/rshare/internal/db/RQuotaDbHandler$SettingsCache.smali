.class final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsCache"
.end annotation


# instance fields
.field private lastresettime:Ljava/lang/String;

.field private quota:Ljava/lang/Long;

.field private timestamp:Ljava/lang/Long;

.field private uploadedFileCount:Ljava/lang/Integer;

.field private usage:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->usage:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->quota:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->lastresettime:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->uploadedFileCount:Ljava/lang/Integer;

    return-void
.end method

.method public static populate(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;Landroid/content/ContentValues;)V
    .locals 6

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "byte_usage"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v0, "quota"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v0, "last_reset_time"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "uploaded_file_count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->put(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public get()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->usage:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->quota:Ljava/lang/Long;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "byte_usage"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->usage:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "timestamp"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->timestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "quota"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->quota:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "last_reset_time"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->lastresettime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uploaded_file_count"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->uploadedFileCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->usage:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->quota:Ljava/lang/Long;

    return-void
.end method

.method public put(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->usage:Ljava/lang/Long;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->timestamp:Ljava/lang/Long;

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->quota:Ljava/lang/Long;

    :cond_2
    if-eqz p4, :cond_3

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->lastresettime:Ljava/lang/String;

    :cond_3
    if-eqz p5, :cond_4

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->uploadedFileCount:Ljava/lang/Integer;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->get()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
