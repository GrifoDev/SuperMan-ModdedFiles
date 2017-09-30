.class public final Lcom/samsung/android/sdk/cover/Scover;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    const/high16 v0, 0x1010000

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "%d.%d.%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/a;

    const-string v1, "This is not Samsung device!!!"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/a;

    const-string v1, "This device is not supported Scover!!!"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    return-void
.end method

.method public isFeatureEnabled(I)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportTypeOfCover(I)Z

    move-result v0

    return v0
.end method
