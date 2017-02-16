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

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static getSmartCallInfo(Landroid/database/Cursor;)Lcom/android/incallui/smartcall/SmartCallInfo;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 53
    new-instance v1, Lcom/android/incallui/smartcall/SmartCallInfo;

    invoke-direct {v1}, Lcom/android/incallui/smartcall/SmartCallInfo;-><init>()V

    .line 55
    .local v1, "info":Lcom/android/incallui/smartcall/SmartCallInfo;
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    .line 56
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    .line 57
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    .line 58
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    .line 59
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    .line 60
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    .line 61
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    .line 62
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    .line 63
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    .line 64
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    .line 65
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    .line 66
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    .line 67
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    .line 69
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    .line 70
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->entityType:Ljava/lang/String;

    .line 71
    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    .line 73
    if-eqz p0, :cond_f

    .line 74
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 75
    const-string v2, "SmartCallInfo"

    const-string v3, "cursor != null && cursor.moveToFirst()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v2, "phoneNumber"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "columnIndex":I
    if-eq v0, v4, :cond_0

    .line 81
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    .line 85
    :cond_0
    const-string v2, "name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 86
    if-eq v0, v4, :cond_1

    .line 87
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    .line 91
    :cond_1
    const-string v2, "imageUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 92
    if-eq v0, v4, :cond_2

    .line 93
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    .line 97
    :cond_2
    const-string v2, "reputationTypeCode"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 98
    if-eq v0, v4, :cond_3

    .line 99
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    .line 103
    :cond_3
    const-string v2, "reputationCategoryCode"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 104
    if-eq v0, v4, :cond_4

    .line 105
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    .line 109
    :cond_4
    const-string v2, "managerMessage"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 110
    if-eq v0, v4, :cond_5

    .line 111
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    .line 115
    :cond_5
    const-string v2, "contentProviderName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 116
    if-eq v0, v4, :cond_6

    .line 117
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    .line 121
    :cond_6
    const-string v2, "contentProviderUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 122
    if-eq v0, v4, :cond_7

    .line 123
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    .line 127
    :cond_7
    const-string v2, "contentProviderImageUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 128
    if-eq v0, v4, :cond_8

    .line 129
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    .line 133
    :cond_8
    const-string v2, "addressCity"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 134
    if-eq v0, v4, :cond_9

    .line 135
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    .line 139
    :cond_9
    const-string v2, "addressState"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 140
    if-eq v0, v4, :cond_a

    .line 141
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    .line 145
    :cond_a
    const-string v2, "addressCountry"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 146
    if-eq v0, v4, :cond_b

    .line 147
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    .line 151
    :cond_b
    const-string v2, "reputationCategoryName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 152
    if-eq v0, v4, :cond_c

    .line 153
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    .line 157
    :cond_c
    const-string v2, "entityType"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 158
    if-eq v0, v4, :cond_d

    .line 159
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->entityType:Ljava/lang/String;

    .line 163
    :cond_d
    const-string v2, "businessText"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 164
    if-eq v0, v4, :cond_e

    .line 165
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/smartcall/SmartCallInfo;->businessText:Ljava/lang/String;

    .line 170
    .end local v0    # "columnIndex":I
    .end local v1    # "info":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_e
    :goto_0
    return-object v1

    .restart local v1    # "info":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_f
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 200
    .local v0, "VERBOSE_DEBUG":Z
    const/4 v1, 0x0

    return-object v1
.end method
