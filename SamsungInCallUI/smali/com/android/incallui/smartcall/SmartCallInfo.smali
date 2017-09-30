.class public Lcom/android/incallui/smartcall/SmartCallInfo;
.super Ljava/lang/Object;


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
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/android/incallui/smartcall/SmartCallInfo;

    invoke-direct {v0}, Lcom/android/incallui/smartcall/SmartCallInfo;-><init>()V

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "SmartCallInfo"

    const-string v2, "cursor != null && cursor.moveToFirst()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "phoneNumber"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    :cond_0
    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    :cond_1
    const-string v1, "imageUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    :cond_2
    const-string v1, "reputationTypeCode"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    :cond_3
    const-string v1, "reputationCategoryCode"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    :cond_4
    const-string v1, "managerMessage"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    :cond_5
    const-string v1, "contentProviderName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    :cond_6
    const-string v1, "contentProviderUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    :cond_7
    const-string v1, "contentProviderImageUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    :cond_8
    const-string v1, "addressCity"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    :cond_9
    const-string v1, "addressState"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_a

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    :cond_a
    const-string v1, "addressCountry"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_b

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    :cond_b
    const-string v1, "reputationCategoryName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_c

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    :cond_c
    const-string v1, "businessText"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_d

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    :cond_d
    :goto_0
    return-object v0

    :cond_e
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
