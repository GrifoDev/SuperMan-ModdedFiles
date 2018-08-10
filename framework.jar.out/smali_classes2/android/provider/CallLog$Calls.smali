.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final BLOCKED_TYPE:I = 0x6

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_HD_CALL:I = 0x4

.field public static final FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final FEATURES_WIFI:I = 0x8

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final REJECTED_TYPE:I = 0x5

.field public static final SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 17

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-static/range {v1 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;)Landroid/net/Uri;
    .locals 17

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-static/range {v1 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;
    .locals 39

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v22, 0x1

    const/16 v26, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    :goto_0
    const/4 v11, 0x0

    if-eqz v26, :cond_0

    if-eqz p8, :cond_0

    move-object/from16 v0, v26

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    :cond_0
    const/4 v5, 0x2

    move/from16 v0, p5

    if-ne v0, v5, :cond_9

    const/16 v22, 0x2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_2

    const-string/jumbo p2, ""

    if-eqz p0, :cond_2

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz p8, :cond_3

    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v13

    :cond_3
    new-instance v34, Landroid/content/ContentValues;

    const/4 v5, 0x6

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v5, "number"

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "post_dial_digits"

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "via_number"

    move-object/from16 v0, v34

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "presentation"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "features"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "date"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "duration"

    move/from16 v0, p11

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p12, :cond_4

    const-string/jumbo v5, "data_usage"

    move-object/from16 v0, v34

    move-object/from16 v1, p12

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    const-string/jumbo v5, "subscription_component_name"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "subscription_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "phone_account_address"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "add_for_all_users"

    if-eqz p13, :cond_c

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x3

    move/from16 v0, p6

    if-ne v0, v5, :cond_5

    const-string/jumbo v6, "is_read"

    if-eqz p15, :cond_d

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    if-eqz p0, :cond_7

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "contact_id =? AND data4 =?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/16 v35, 0x0

    aput-object v9, v8, v35

    const/4 v9, 0x1

    aput-object v21, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    :goto_4
    if-eqz v17, :cond_7

    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/16 v5, 0x2710

    move/from16 v0, p11

    if-lt v0, v5, :cond_6

    const/4 v5, 0x2

    move/from16 v0, p6

    if-ne v0, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v4, v1, v2}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_7
    const/16 v24, 0x0

    const-class v5, Landroid/os/UserManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/UserManager;

    invoke-virtual/range {v32 .. v32}, Landroid/os/UserManager;->getUserHandle()I

    move-result v16

    if-eqz p13, :cond_14

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-static {v0, v1, v5, v2}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v28

    if-eqz v28, :cond_8

    const-string/jumbo v5, "call_log_shadow"

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_8
    const/4 v5, 0x0

    return-object v5

    :catch_0
    move-exception v19

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x4

    move/from16 v0, p5

    if-ne v0, v5, :cond_a

    const/16 v22, 0x4

    goto/16 :goto_1

    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x3

    move/from16 v0, p5

    if-ne v0, v5, :cond_1

    :cond_b
    const/16 v22, 0x3

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    :goto_5
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "contact_id =?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/16 v35, 0x0

    aput-object v9, v8, v35

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_4

    :cond_f
    move-object/from16 v23, p2

    goto :goto_5

    :catchall_0
    move-exception v5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_10
    if-nez v16, :cond_11

    move-object/from16 v24, v28

    :cond_11
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v15

    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v0, v15, :cond_15

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v30

    invoke-virtual/range {v29 .. v29}, Landroid/os/UserHandle;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    :cond_13
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v27

    move/from16 v0, v30

    move/from16 v1, v16

    if-ne v0, v1, :cond_12

    move-object/from16 v24, v27

    goto :goto_7

    :cond_14
    if-eqz p14, :cond_16

    move-object/from16 v25, p14

    :goto_8
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v24

    :cond_15
    return-object v24

    :cond_16
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v25

    goto :goto_8
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    invoke-virtual {v1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    sget-object v4, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "CallLog"

    const-string/jumbo v5, "Failed to insert calllog"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "number"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "type = 2"

    const-string/jumbo v5, "date DESC LIMIT 1"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "call"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
