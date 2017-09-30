.class public Lcom/android/incallui/CarrierMatchUtils;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCarrierCode(I)I
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    div-int/lit8 p0, p0, 0xa

    :cond_0
    return p0
.end method

.method public static getCarrierImage(II)I
    .locals 1

    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    if-ne p1, v0, :cond_0

    const v0, 0x7f0202fb

    goto :goto_0

    :cond_0
    const v0, 0x7f0202fa

    goto :goto_0

    :sswitch_1
    if-ne p1, v0, :cond_1

    const v0, 0x7f0202f0

    goto :goto_0

    :cond_1
    const v0, 0x7f0202ef

    goto :goto_0

    :sswitch_2
    if-ne p1, v0, :cond_2

    const v0, 0x7f0202f4

    goto :goto_0

    :cond_2
    const v0, 0x7f0202f3

    goto :goto_0

    :sswitch_3
    if-ne p1, v0, :cond_3

    const v0, 0x7f0202f9

    goto :goto_0

    :cond_3
    const v0, 0x7f0202f8

    goto :goto_0

    :sswitch_4
    if-ne p1, v0, :cond_4

    const v0, 0x7f0202ed

    goto :goto_0

    :cond_4
    const v0, 0x7f0202ec

    goto :goto_0

    :sswitch_5
    if-ne p1, v0, :cond_5

    const v0, 0x7f0202f7

    goto :goto_0

    :cond_5
    const v0, 0x7f0202f6

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0202f2

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0202f5

    goto :goto_0

    :sswitch_8
    const v0, 0x7f0202ee

    goto :goto_0

    :sswitch_9
    const v0, 0x7f0202f1

    goto :goto_0

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

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    rem-int/lit8 v0, p0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getFormattedNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

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

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v3
.end method

.method public static queryCarrierCodeFromDb(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-static {p1, p0}, Lcom/android/incallui/CarrierMatchUtils;->getFormattedNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "data14"

    aput-object v0, v2, v3

    const-string v0, "mimetype = ? AND data1 = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v3

    aput-object p1, v4, v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = ? AND data1 = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "data14"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move v0, v6

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2
    move v6, v0

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move-object p1, v0

    goto :goto_1
.end method
