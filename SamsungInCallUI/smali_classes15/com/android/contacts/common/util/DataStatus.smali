.class public Lcom/android/contacts/common/util/DataStatus;
.super Ljava/lang/Object;
.source "DataStatus.java"


# instance fields
.field private mIconRes:I

.field private mLabelRes:I

.field private mPresence:I

.field private mResPackage:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private fromCursor(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, -0x1

    const-string v0, "mode"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    const-string v0, "status_ts"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    const-string v0, "status_res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    const-string v0, "status_icon"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    const-string v0, "status_label"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isNull(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPresence()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    return v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    return-wide v0
.end method

.method public getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    :cond_0
    iget-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v11, 0x1

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v10, 0x1

    :goto_1
    if-eqz v11, :cond_4

    iget-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v9

    :goto_2
    if-eqz v10, :cond_5

    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_3
    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    const v0, 0x7f09047b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_4
    return-object v9

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    if-eqz v10, :cond_7

    const v0, 0x7f09047a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_7
    if-nez v11, :cond_1

    const/4 v9, 0x0

    goto :goto_4
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public possibleUpdate(Landroid/database/Cursor;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "status"

    invoke-static {p1, v6}, Lcom/android/contacts/common/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    :goto_0
    const-string v6, "status_ts"

    invoke-static {p1, v6}, Lcom/android/contacts/common/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    :goto_1
    if-nez v0, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/util/DataStatus;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    if-eqz v1, :cond_5

    const-string v4, "status_ts"

    const-wide/16 v6, -0x1

    invoke-static {p1, v4, v6, v7}, Lcom/android/contacts/common/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    iput-wide v2, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    goto :goto_2
.end method
