.class public Lcom/android/incallui/util/ContactAgentUtils;
.super Ljava/lang/Object;
.source "ContactAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/ContactAgentUtils$ContactAgentReceiver;,
        Lcom/android/incallui/util/ContactAgentUtils$SamsungEasySignUpPresence;
    }
.end annotation


# static fields
.field public static ACTION_CONTACT_ORIGINAL_IMAGE:Ljava/lang/String; = null

.field public static ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "ContactAgentUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.samsung.android.coreapps.contact.ACTION_CONTACT_ORIGINAL_IMAGE_RESULT"

    sput-object v0, Lcom/android/incallui/util/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String;

    .line 51
    const-string v0, "com.samsung.android.coreapps.contact.ACTION_CONTACT_ORIGINAL_IMAGE"

    sput-object v0, Lcom/android/incallui/util/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static getPresenceIcon(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x5

    .line 195
    const/4 v0, -0x1

    .line 198
    .local v0, "mode":I
    sparse-switch p1, :sswitch_data_0

    .line 268
    :goto_0
    return v0

    .line 204
    :sswitch_0
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    .line 205
    goto :goto_0

    .line 208
    :sswitch_1
    invoke-static {v1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    .line 209
    goto :goto_0

    .line 211
    :sswitch_2
    const v0, 0x7f0200bc

    .line 212
    goto :goto_0

    .line 214
    :sswitch_3
    const v0, 0x7f0200bb

    .line 215
    goto :goto_0

    .line 217
    :sswitch_4
    const v0, 0x7f0200ba

    .line 218
    goto :goto_0

    .line 220
    :sswitch_5
    const v0, 0x7f0200be

    .line 221
    goto :goto_0

    .line 223
    :sswitch_6
    const v0, 0x7f0200b9

    .line 224
    goto :goto_0

    .line 226
    :sswitch_7
    const v0, 0x7f0200bd

    .line 227
    goto :goto_0

    .line 234
    :sswitch_8
    invoke-static {v1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    .line 235
    goto :goto_0

    .line 237
    :sswitch_9
    const v0, 0x7f02017b

    .line 238
    goto :goto_0

    .line 240
    :sswitch_a
    const v0, 0x7f020180

    .line 241
    goto :goto_0

    .line 243
    :sswitch_b
    const v0, 0x7f02017f

    .line 244
    goto :goto_0

    .line 246
    :sswitch_c
    const v0, 0x7f02017e

    .line 247
    goto :goto_0

    .line 249
    :sswitch_d
    const v0, 0x7f02017c

    .line 250
    goto :goto_0

    .line 252
    :sswitch_e
    const v0, 0x7f02017d

    .line 253
    goto :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x7d1 -> :sswitch_8
        0x7d2 -> :sswitch_9
        0x7d3 -> :sswitch_a
        0x7d4 -> :sswitch_b
        0x7d5 -> :sswitch_c
        0x7d6 -> :sswitch_d
        0x7d7 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getPresenceMode(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    .line 174
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 175
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, -0x1

    .line 176
    .local v7, "mode":I
    const/4 v6, 0x0

    .line 178
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_presence"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    if-eqz v6, :cond_0

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 181
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 185
    :cond_0
    if-eqz v6, :cond_1

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_1
    :goto_0
    const-string v0, "ContactAgentUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPresenceMode for contactId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return v7

    .line 183
    :catch_0
    move-exception v0

    .line 185
    if-eqz v6, :cond_1

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isBizringByMsisdn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msisdn"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    const-string v6, "vnd.sec.cursor.item/samsung_easysignup"

    .line 306
    .local v6, "MIME_TYPE":Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data5"

    aput-object v0, v2, v1

    .line 310
    .local v2, "PROJECTION":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 311
    .local v9, "isBizring":Z
    const/4 v7, 0x0

    .line 314
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = ? AND data1 = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "vnd.sec.cursor.item/samsung_easysignup"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 319
    if-eqz v7, :cond_3

    .line 320
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 321
    const-string v0, "ContactAgentUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBizringByMsisdn() - can\'t find "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 336
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_1
    :goto_1
    const-string v0, "ContactAgentUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBizringByMsisdn() isBizring "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return v9

    .line 323
    :cond_2
    :try_start_1
    const-string v0, "ContactAgentUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBizringByMsisdn() - found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 325
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, "value":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_0

    .line 330
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const-string v0, "ContactAgentUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBizringByMsisdn() - can\'t find "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cusor is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v8

    .line 333
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    if-eqz v7, :cond_1

    .line 336
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 335
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 336
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static isSupportContactAgent()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 272
    const/4 v1, 0x0

    .line 278
    .local v1, "SERVICE_ID_CONTACT":I
    const/4 v0, -0x1

    .line 283
    .local v0, "CONTACT_SERVICE_OFF":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 285
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2, v6}, Lcom/android/incallui/util/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v4

    .line 286
    .local v4, "features":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 287
    const-string v7, "ContactAgentUtils"

    const-string v8, "isSupportContactAgent returns false because of CONTACT_SERVICE_OFF"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 301
    :goto_0
    return v5

    .line 291
    :cond_0
    const/4 v5, 0x0

    .line 294
    .local v5, "retValue":Z
    :try_start_0
    invoke-static {v2}, Lcom/android/incallui/util/EasySignUpManager;->isAuth(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 300
    const-string v6, "ContactAgentUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportContactAgent returns "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :catch_0
    move-exception v3

    .line 296
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v7, "ContactAgentUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSupportContactAgent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v5, v6

    .line 297
    goto :goto_0
.end method

.method public static startContactAgent(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "isIncoming"    # Z
    .param p3, "isSavedContact"    # Z

    .prologue
    .line 134
    const-string v1, "ContactAgentUtils"

    const-string v2, "startContactAgent"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/util/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.coreapps"

    const-string v3, "com.samsung.android.coreapps.contact.transaction.ContactService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    const-string v1, "PHONENUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v2, "CALLTYPE"

    if-eqz p2, :cond_0

    const-string v1, "In"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "OSVERSION"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v1, "SAVEDCONTACT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 142
    return-void

    .line 138
    :cond_0
    const-string v1, "Out"

    goto :goto_0
.end method

.method public static startContactAgentAsync(Ljava/lang/String;ZZ)V
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "isIncoming"    # Z
    .param p2, "isContactExists"    # Z

    .prologue
    .line 145
    new-instance v0, Lcom/android/incallui/util/ContactAgentUtils$1;

    invoke-direct {v0}, Lcom/android/incallui/util/ContactAgentUtils$1;-><init>()V

    .line 170
    .local v0, "task":Landroid/os/AsyncTask;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    return-void
.end method
