.class public Lcom/android/incallui/smartcall/SmartCallInfo;
.super Ljava/lang/Object;
.source "SmartCallInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartCallInfo"


# instance fields
.field public addressCity:Ljava/lang/String;

.field public addressCountry:Ljava/lang/String;

.field public addressState:Ljava/lang/String;

.field public businessText:Ljava/lang/String;

.field public contentProviderImageUrl:Ljava/lang/String;

.field public contentProviderName:Ljava/lang/String;

.field public contentProviderUrl:Ljava/lang/String;

.field public entityType:Ljava/lang/String;

.field public imageUri:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public managerMessage:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public reputationCategoryCode:Ljava/lang/String;

.field public reputationCategoryName:Ljava/lang/String;

.field public reputationTypeCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmartCallInfo(Landroid/database/Cursor;)Lcom/android/incallui/smartcall/SmartCallInfo;
    .locals 5

    const/4 v4, -0x1

    const/4 v2, 0x0

    new-instance v1, Lcom/android/incallui/smartcall/SmartCallInfo;

    invoke-direct {v1}, Lcom/android/incallui/smartcall/SmartCallInfo;-><init>()V

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->entityType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "SmartCallInfo"

    const-string v3, "cursor != null && cursor.moveToFirst()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "phoneNumber"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    :cond_0
    const-string v2, "name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    :cond_1
    const-string v2, "imageUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    :cond_2
    const-string v2, "reputationTypeCode"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    :cond_3
    const-string v2, "reputationCategoryCode"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    :cond_4
    const-string v2, "managerMessage"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    :cond_5
    const-string v2, "contentProviderName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    :cond_6
    const-string v2, "contentProviderUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    :cond_7
    const-string v2, "contentProviderImageUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    :cond_8
    const-string v2, "addressCity"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    :cond_9
    const-string v2, "addressState"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_a

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    :cond_a
    const-string v2, "addressCountry"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_b

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    :cond_b
    const-string v2, "reputationCategoryName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_c

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    :cond_c
    const-string v2, "entityType"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_d

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->entityType:Ljava/lang/String;

    :cond_d
    const-string v2, "businessText"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_e

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    :cond_e
    :goto_0
    return-object v1

    :cond_f
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    return-object v1
.end method
