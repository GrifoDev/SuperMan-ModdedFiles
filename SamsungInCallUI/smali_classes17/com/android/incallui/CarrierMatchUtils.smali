.class public Lcom/android/incallui/CarrierMatchUtils;
.super Ljava/lang/Object;
.source "CarrierMatchUtils.java"


# static fields
.field public static final ALGAR_CODE:I = 0xc

.field public static final AMERICA_NET_CODE:I = 0x55

.field public static final CLARO_CODE:I = 0x15

.field public static final GVT_CODE:I = 0x19

.field public static final LAND_TYPE:I = 0x1

.field public static final MOBILE_TYPE:I = 0x2

.field public static final NEXTEL_CODE:I = 0x27

.field public static final OI_CODE:I = 0x1f

.field public static final OI_OTHER_CODE:I = 0xe

.field public static final PORTO_SEGURO_CODE:I = 0x51

.field public static final SERCOMTEL_CODE:I = 0x2b

.field public static final TIM_CODE:I = 0x29

.field public static final UNKNOWN_CODE:I = 0x63

.field public static final UNKNOWN_TYPE:I = 0x0

.field public static final VIVO_CODE:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCarrierCode(I)I
    .locals 1
    .param p0, "carrierInfo"    # I

    .prologue
    .line 160
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    .line 161
    div-int/lit8 p0, p0, 0xa

    .line 163
    .end local p0    # "carrierInfo":I
    :cond_0
    return p0
.end method

.method public static getCarrierImage(II)I
    .locals 1
    .param p0, "carrierNumber"    # I
    .param p1, "carrierType"    # I

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p0, :sswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 40
    :sswitch_0
    if-ne p1, v0, :cond_0

    .line 41
    const v0, 0x7f020274

    goto :goto_0

    .line 43
    :cond_0
    const v0, 0x7f020273

    goto :goto_0

    .line 46
    :sswitch_1
    if-ne p1, v0, :cond_1

    .line 47
    const v0, 0x7f020269

    goto :goto_0

    .line 49
    :cond_1
    const v0, 0x7f020268

    goto :goto_0

    .line 52
    :sswitch_2
    if-ne p1, v0, :cond_2

    .line 53
    const v0, 0x7f02026d

    goto :goto_0

    .line 55
    :cond_2
    const v0, 0x7f02026c

    goto :goto_0

    .line 58
    :sswitch_3
    if-ne p1, v0, :cond_3

    .line 59
    const v0, 0x7f020272

    goto :goto_0

    .line 61
    :cond_3
    const v0, 0x7f020271

    goto :goto_0

    .line 64
    :sswitch_4
    if-ne p1, v0, :cond_4

    .line 65
    const v0, 0x7f020266

    goto :goto_0

    .line 67
    :cond_4
    const v0, 0x7f020265

    goto :goto_0

    .line 70
    :sswitch_5
    if-ne p1, v0, :cond_5

    .line 71
    const v0, 0x7f020270

    goto :goto_0

    .line 73
    :cond_5
    const v0, 0x7f02026f

    goto :goto_0

    .line 76
    :sswitch_6
    const v0, 0x7f02026b

    goto :goto_0

    .line 78
    :sswitch_7
    const v0, 0x7f02026e

    goto :goto_0

    .line 80
    :sswitch_8
    const v0, 0x7f020267

    goto :goto_0

    .line 82
    :sswitch_9
    const v0, 0x7f02026a

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_4
        0xf -> :sswitch_0
        0x15 -> :sswitch_1
        0x19 -> :sswitch_9
        0x1f -> :sswitch_2
        0x27 -> :sswitch_6
        0x29 -> :sswitch_3
        0x2b -> :sswitch_5
        0x51 -> :sswitch_7
        0x55 -> :sswitch_8
    .end sparse-switch
.end method

.method public static getCarrierType(I)I
    .locals 1
    .param p0, "carrierInfo"    # I

    .prologue
    .line 173
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    .line 174
    rem-int/lit8 v0, p0, 0xa

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getFormattedNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    .local v7, "formattedNumber":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "number"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    .local v6, "cursorContactInfo":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 144
    .local v8, "indexNum":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 147
    .end local v8    # "indexNum":I
    :cond_0
    if-eqz v6, :cond_1

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_1
    return-object v7
.end method

.method public static queryCarrierCodeFromDb(Landroid/content/Context;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 96
    const/4 v7, -0x1

    .line 98
    .local v7, "carrierCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v7

    .line 124
    .end local v7    # "carrierCode":I
    .local v8, "carrierCode":I
    :goto_0
    return v8

    .line 102
    .end local v8    # "carrierCode":I
    .restart local v7    # "carrierCode":I
    :cond_0
    invoke-static {p1, p0}, Lcom/android/incallui/CarrierMatchUtils;->getFormattedNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "formattedNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    move-object v11, p1

    .line 108
    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "data14"

    aput-object v0, v2, v1

    .line 109
    .local v2, "PROJECTION":[Ljava/lang/String;
    const-string v6, "mimetype = ? AND data1 = ?"

    .line 110
    .local v6, "SELECTION":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v1

    aput-object v11, v4, v3

    .line 112
    .local v4, "SELECTION_ARGS":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = ? AND data1 = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 113
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 114
    const-string v0, "data14"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 115
    .local v9, "carrierColumn":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 117
    if-lez v7, :cond_2

    .line 121
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v9    # "carrierColumn":I
    :cond_4
    move v8, v7

    .line 124
    .end local v7    # "carrierCode":I
    .restart local v8    # "carrierCode":I
    goto :goto_0
.end method
