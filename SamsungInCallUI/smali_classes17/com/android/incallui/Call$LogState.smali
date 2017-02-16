.class public Lcom/android/incallui/Call$LogState;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogState"
.end annotation


# static fields
.field public static final INITIATION_CALL_DETAILS:I = 0xa

.field public static final INITIATION_CALL_LOG:I = 0x7

.field public static final INITIATION_CALL_LOG_FILTER:I = 0x8

.field public static final INITIATION_DIALPAD:I = 0x2

.field public static final INITIATION_EXTERNAL:I = 0xc

.field public static final INITIATION_INCOMING:I = 0x1

.field public static final INITIATION_QUICK_CONTACTS:I = 0xb

.field public static final INITIATION_REGULAR_SEARCH:I = 0x6

.field public static final INITIATION_REMOTE_DIRECTORY:I = 0x4

.field public static final INITIATION_SMART_DIAL:I = 0x5

.field public static final INITIATION_SPEED_DIAL:I = 0x3

.field public static final INITIATION_UNKNOWN:I = 0x0

.field public static final INITIATION_VOICEMAIL_LOG:I = 0x9

.field public static final LOOKUP_EMERGENCY:I = 0x5

.field public static final LOOKUP_LOCAL_CACHE:I = 0x3

.field public static final LOOKUP_LOCAL_CONTACT:I = 0x2

.field public static final LOOKUP_NOT_FOUND:I = 0x1

.field public static final LOOKUP_REMOTE_CONTACT:I = 0x4

.field public static final LOOKUP_UNKNOWN:I = 0x0

.field public static final LOOKUP_VOICEMAIL:I = 0x6


# instance fields
.field public callInitiationMethod:I

.field public conferencedCalls:I

.field public contactLookupResult:I

.field public disconnectCause:Landroid/telecom/DisconnectCause;

.field public duration:J

.field public isIncoming:Z

.field public isLogged:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-boolean v2, p0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    .line 276
    iput v2, p0, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    .line 277
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    .line 279
    iput v2, p0, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/Call$LogState;->duration:J

    .line 281
    iput-boolean v2, p0, Lcom/android/incallui/Call$LogState;->isLogged:Z

    return-void
.end method

.method private static initiationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "initiationType"    # I

    .prologue
    .line 317
    packed-switch p0, :pswitch_data_0

    .line 341
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 319
    :pswitch_0
    const-string v0, "Incoming"

    goto :goto_0

    .line 321
    :pswitch_1
    const-string v0, "Dialpad"

    goto :goto_0

    .line 323
    :pswitch_2
    const-string v0, "Speed Dial"

    goto :goto_0

    .line 325
    :pswitch_3
    const-string v0, "Remote Directory"

    goto :goto_0

    .line 327
    :pswitch_4
    const-string v0, "Smart Dial"

    goto :goto_0

    .line 329
    :pswitch_5
    const-string v0, "Regular Search"

    goto :goto_0

    .line 331
    :pswitch_6
    const-string v0, "Call Log"

    goto :goto_0

    .line 333
    :pswitch_7
    const-string v0, "Call Log Filter"

    goto :goto_0

    .line 335
    :pswitch_8
    const-string v0, "Voicemail Log"

    goto :goto_0

    .line 337
    :pswitch_9
    const-string v0, "Call Details"

    goto :goto_0

    .line 339
    :pswitch_a
    const-string v0, "Quick Contacts"

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static lookupToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "lookupType"    # I

    .prologue
    .line 300
    packed-switch p0, :pswitch_data_0

    .line 312
    const-string v0, "Not found"

    :goto_0
    return-object v0

    .line 302
    :pswitch_0
    const-string v0, "Local"

    goto :goto_0

    .line 304
    :pswitch_1
    const-string v0, "Cache"

    goto :goto_0

    .line 306
    :pswitch_2
    const-string v0, "Remote"

    goto :goto_0

    .line 308
    :pswitch_3
    const-string v0, "Emergency"

    goto :goto_0

    .line 310
    :pswitch_4
    const-string v0, "Voicemail"

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 285
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s, isIncoming: %s, contactLookup: %s, callInitiation: %s, duration: %s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/Call$LogState;->disconnectCause:Landroid/telecom/DisconnectCause;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    .line 293
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    .line 294
    invoke-static {v4}, Lcom/android/incallui/Call$LogState;->lookupToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    .line 295
    invoke-static {v4}, Lcom/android/incallui/Call$LogState;->initiationToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/android/incallui/Call$LogState;->duration:J

    .line 296
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 285
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
