.class public Lcom/android/incallui/Call$LogState;
.super Ljava/lang/Object;


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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    iput v1, p0, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    iput v1, p0, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/Call$LogState;->duration:J

    return-void
.end method

.method private static initiationToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Incoming"

    goto :goto_0

    :pswitch_1
    const-string v0, "Dialpad"

    goto :goto_0

    :pswitch_2
    const-string v0, "Speed Dial"

    goto :goto_0

    :pswitch_3
    const-string v0, "Remote Directory"

    goto :goto_0

    :pswitch_4
    const-string v0, "Smart Dial"

    goto :goto_0

    :pswitch_5
    const-string v0, "Regular Search"

    goto :goto_0

    :pswitch_6
    const-string v0, "Call Log"

    goto :goto_0

    :pswitch_7
    const-string v0, "Call Log Filter"

    goto :goto_0

    :pswitch_8
    const-string v0, "Voicemail Log"

    goto :goto_0

    :pswitch_9
    const-string v0, "Call Details"

    goto :goto_0

    :pswitch_a
    const-string v0, "Quick Contacts"

    goto :goto_0

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

    packed-switch p0, :pswitch_data_0

    const-string v0, "Not found"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Local"

    goto :goto_0

    :pswitch_1
    const-string v0, "Cache"

    goto :goto_0

    :pswitch_2
    const-string v0, "Remote"

    goto :goto_0

    :pswitch_3
    const-string v0, "Emergency"

    goto :goto_0

    :pswitch_4
    const-string v0, "Voicemail"

    goto :goto_0

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

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s, isIncoming: %s, contactLookup: %s, callInitiation: %s, duration: %s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/Call$LogState;->disconnectCause:Landroid/telecom/DisconnectCause;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    invoke-static {v4}, Lcom/android/incallui/Call$LogState;->lookupToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    invoke-static {v4}, Lcom/android/incallui/Call$LogState;->initiationToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/android/incallui/Call$LogState;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
