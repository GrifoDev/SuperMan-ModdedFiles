.class public Lcom/android/dialer/logging/ScreenEvent;
.super Ljava/lang/Object;
.source "ScreenEvent.java"


# static fields
.field public static final ALL_CONTACTS:I = 0x5

.field public static final BLOCKED_NUMBER_ADD_NUMBER:I = 0x13

.field public static final BLOCKED_NUMBER_MANAGEMENT:I = 0x12

.field public static final CALL_LOG:I = 0x3

.field public static final CALL_LOG_CONTEXT_MENU:I = 0x11

.field public static final CALL_LOG_FILTER:I = 0x8

.field public static final CLEAR_FREQUENTS:I = 0xb

.field public static final CONFERENCE_MANAGEMENT:I = 0xf

.field public static final DIALPAD:I = 0x1

.field public static final FRAGMENT_TAG_SEPARATOR:Ljava/lang/String; = "#"

.field public static final IMPORT_EXPORT_CONTACTS:I = 0xa

.field public static final INCALL:I = 0xd

.field public static final INCALL_DIALPAD:I = 0x10

.field public static final INCOMING_CALL:I = 0xe

.field public static final REGULAR_SEARCH:I = 0x6

.field public static final SEND_FEEDBACK:I = 0xc

.field public static final SETTINGS:I = 0x9

.field public static final SMART_DIAL_SEARCH:I = 0x7

.field public static final SPEED_DIAL:I = 0x2

.field public static final UNKNOWN:I = 0x0

.field public static final VOICEMAIL_LOG:I = 0x4

.field private static final sScreenNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent;->sScreenNameMap:Ljava/util/Map;

    .line 118
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent;->sScreenNameMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent;->sScreenNameMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent;->sScreenNameMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SendFeedback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent;->sScreenNameMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent;->sScreenNameMap:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent;->sScreenNameMap:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/android/incallui/fragment/ConferenceManagerFragment;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenName(I)Ljava/lang/String;
    .locals 2
    .param p0, "screenType"    # I

    .prologue
    .line 145
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent;->sScreenNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenNameWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    .end local p0    # "screenName":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "screenName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
