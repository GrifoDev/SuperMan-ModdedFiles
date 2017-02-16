.class public final Landroid/provider/VoicemailContract$Status;
.super Ljava/lang/Object;
.source "VoicemailContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/VoicemailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final CONFIGURATION_STATE:Ljava/lang/String; = "configuration_state"

.field public static final CONFIGURATION_STATE_CAN_BE_CONFIGURED:I = 0x2

.field public static final CONFIGURATION_STATE_IGNORE:I = -0x1

.field public static final CONFIGURATION_STATE_NOT_CONFIGURED:I = 0x1

.field public static final CONFIGURATION_STATE_OK:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_CHANNEL_STATE:Ljava/lang/String; = "data_channel_state"

.field public static final DATA_CHANNEL_STATE_BAD_CONFIGURATION:I = 0x3

.field public static final DATA_CHANNEL_STATE_COMMUNICATION_ERROR:I = 0x4

.field public static final DATA_CHANNEL_STATE_IGNORE:I = -0x1

.field public static final DATA_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final DATA_CHANNEL_STATE_NO_CONNECTION_CELLULAR_REQUIRED:I = 0x2

.field public static final DATA_CHANNEL_STATE_OK:I = 0x0

.field public static final DATA_CHANNEL_STATE_SERVER_CONNECTION_ERROR:I = 0x6

.field public static final DATA_CHANNEL_STATE_SERVER_ERROR:I = 0x5

.field public static final DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemail.source.status"

.field public static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail.source.status"

.field public static final NOTIFICATION_CHANNEL_STATE:Ljava/lang/String; = "notification_channel_state"

.field public static final NOTIFICATION_CHANNEL_STATE_IGNORE:I = -0x1

.field public static final NOTIFICATION_CHANNEL_STATE_MESSAGE_WAITING:I = 0x2

.field public static final NOTIFICATION_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final NOTIFICATION_CHANNEL_STATE_OK:I = 0x0

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "phone_account_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "phone_account_id"

.field public static final QUOTA_OCCUPIED:Ljava/lang/String; = "quota_occupied"

.field public static final QUOTA_TOTAL:Ljava/lang/String; = "quota_total"

.field public static final QUOTA_UNAVAILABLE:I = -0x1

.field public static final SETTINGS_URI:Ljava/lang/String; = "settings_uri"

.field public static final SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final VOICEMAIL_ACCESS_URI:Ljava/lang/String; = "voicemail_access_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 347
    const-string/jumbo v0, "content://com.android.voicemail/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    .line 345
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 543
    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 544
    const-string/jumbo v1, "source_package"

    .line 543
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setQuota(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;II)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "occupied"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v5, -0x1

    .line 590
    if-ne p2, v5, :cond_0

    if-ne p3, v5, :cond_0

    .line 591
    return-void

    .line 593
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 594
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "phone_account_component_name"

    .line 595
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 594
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string/jumbo v3, "phone_account_id"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    if-eq p2, v5, :cond_1

    .line 598
    const-string/jumbo v3, "quota_occupied"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    :cond_1
    if-eq p3, v5, :cond_2

    .line 601
    const-string/jumbo v3, "quota_total"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 605
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 606
    .local v1, "statusUri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 589
    return-void
.end method

.method public static setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "configurationState"    # I
    .param p3, "dataChannelState"    # I
    .param p4, "notificationChannelState"    # I

    .prologue
    const/4 v5, -0x1

    .line 560
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "phone_account_component_name"

    .line 562
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 561
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string/jumbo v3, "phone_account_id"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-eq p2, v5, :cond_0

    .line 565
    const-string/jumbo v3, "configuration_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    :cond_0
    if-eq p3, v5, :cond_1

    .line 568
    const-string/jumbo v3, "data_channel_state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    :cond_1
    if-eq p4, v5, :cond_2

    .line 571
    const-string/jumbo v3, "notification_channel_state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 574
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 575
    .local v1, "statusUri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 559
    return-void
.end method
