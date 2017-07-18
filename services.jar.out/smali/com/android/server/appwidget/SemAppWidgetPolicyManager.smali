.class public Lcom/android/server/appwidget/SemAppWidgetPolicyManager;
.super Ljava/lang/Object;
.source "SemAppWidgetPolicyManager.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final POLICY_BLACK_LIST_PACKAGE:Ljava/lang/String; = "policy.black.list.package"

.field private static final POLICY_MAX_FD_COUNT:Ljava/lang/String; = "policy.max.fd.count"

.field private static final POLICY_SEQ_NUM_MIN:Ljava/lang/String; = "policy.seq.num.min"

.field private static final POLICY_SEQ_NUM_NEXT_STEP:Ljava/lang/String; = "policy.seq.num.next.step"

.field private static final POLICY_SKIP_MERGE:Ljava/lang/String; = "policy.skip.merge"

.field private static final POLICY_TOO_LARGE_EXCEPTION:Ljava/lang/String; = "policy.too.large.exception"

.field private static final SCPM_COLUMN_CATEGORY:Ljava/lang/String; = "category"

.field private static final SCPM_COLUMN_ITEM:Ljava/lang/String; = "item"

.field private static final SCPM_ITEM_APPWIDGET:Ljava/lang/String; = "policy_item/AppWidget"

.field private static final SCPM_POLICY_PROJECTION:[Ljava/lang/String;

.field private static final SCPM_URI_APPWIDGET:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SemAppWidgetPolicyManager"


# instance fields
.field private mBlackListPackage:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsPolicySkipMerge:Z

.field private mIsPolicyTooLarge:Z

.field private mPolicyMaxFdCount:I

.field private mSeqNumMin:I

.field private mSeqNumNextStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item/AppWidget"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->SCPM_URI_APPWIDGET:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "item"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "category"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->SCPM_POLICY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mIsPolicyTooLarge:Z

    iput-boolean v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mIsPolicySkipMerge:Z

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mPolicyMaxFdCount:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mSeqNumMin:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mSeqNumNextStep:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBlackListPackage()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mBlackListPackage:[Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyMaxFdCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mPolicyMaxFdCount:I

    return v0
.end method

.method public getSeqNumMin()I
    .locals 1

    iget v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mSeqNumMin:I

    return v0
.end method

.method public getSeqNumNextStep()I
    .locals 1

    iget v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mSeqNumNextStep:I

    return v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPolicySeqNum()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mSeqNumMin:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPolicySkipMerge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mIsPolicySkipMerge:Z

    return v0
.end method

.method public isPolicyTooLarge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mIsPolicyTooLarge:Z

    return v0
.end method

.method public reloadFdLeakPolicy()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemAppWidgetPolicyManager"

    const-string/jumbo v2, "SCPM is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    const-string/jumbo v1, "SemAppWidgetPolicyManager"

    const-string/jumbo v2, "isAvailable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->SCPM_URI_APPWIDGET:Landroid/net/Uri;

    sget-object v2, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->SCPM_POLICY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_8

    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "item"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "category"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "SemAppWidgetPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reloadFdLeakPolicy, item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    const-string/jumbo v1, "policy.too.large.exception"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mIsPolicyTooLarge:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "policy.skip.merge"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mIsPolicySkipMerge:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "policy.max.fd.count"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mPolicyMaxFdCount:I

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "policy.black.list.package"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mBlackListPackage:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "policy.seq.num.min"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mSeqNumMin:I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "policy.seq.num.next.step"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/appwidget/SemAppWidgetPolicyManager;->mSeqNumNextStep:I

    goto/16 :goto_0

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x1

    return v1

    :cond_8
    const-string/jumbo v1, "SemAppWidgetPolicyManager"

    const-string/jumbo v2, "cursor is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method
