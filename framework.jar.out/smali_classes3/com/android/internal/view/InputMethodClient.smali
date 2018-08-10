.class public final Lcom/android/internal/view/InputMethodClient;
.super Ljava/lang/Object;
.source "InputMethodClient.java"


# static fields
.field public static final START_INPUT_REASON_ACTIVATED_BY_IMMS:I = 0x7

.field public static final START_INPUT_REASON_APP_CALLED_RESTART_INPUT_API:I = 0x3

.field public static final START_INPUT_REASON_BOUND_TO_IMMS:I = 0x5

.field public static final START_INPUT_REASON_CHECK_FOCUS:I = 0x4

.field public static final START_INPUT_REASON_DEACTIVATED_BY_IMMS:I = 0x8

.field public static final START_INPUT_REASON_SESSION_CREATED_BY_IME:I = 0x9

.field public static final START_INPUT_REASON_UNBOUND_FROM_IMMS:I = 0x6

.field public static final START_INPUT_REASON_UNSPECIFIED:I = 0x0

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN:I = 0x1

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN_REPORT_ONLY:I = 0x2

.field public static final UNBIND_REASON_DISCONNECT_IME:I = 0x3

.field public static final UNBIND_REASON_NO_IME:I = 0x4

.field public static final UNBIND_REASON_SWITCH_CLIENT:I = 0x1

.field public static final UNBIND_REASON_SWITCH_IME:I = 0x2

.field public static final UNBIND_REASON_SWITCH_IME_FAILED:I = 0x5

.field public static final UNBIND_REASON_SWITCH_USER:I = 0x6

.field public static final UNBIND_REASON_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartInputReason(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "WINDOW_FOCUS_GAIN"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "WINDOW_FOCUS_GAIN_REPORT_ONLY"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "APP_CALLED_RESTART_INPUT_API"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "CHECK_FOCUS"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "BOUND_TO_IMMS"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "UNBOUND_FROM_IMMS"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "ACTIVATED_BY_IMMS"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "DEACTIVATED_BY_IMMS"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "SESSION_CREATED_BY_IME"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public static getUnbindReason(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SWITCH_CLIENT"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SWITCH_IME"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "DISCONNECT_IME"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "NO_IME"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "SWITCH_IME_FAILED"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "SWITCH_USER"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static softInputModeToString(I)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v3, p0, 0xf

    and-int/lit16 v0, p0, 0xf0

    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string/jumbo v4, "STATE_UNKNOWN("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v4, "|ADJUST_UNKNOWN("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-eqz v1, :cond_0

    const-string/jumbo v4, "|IS_FORWARD_NAVIGATION"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v4, "STATE_UNSPECIFIED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v4, "STATE_UNCHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string/jumbo v4, "STATE_HIDDEN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string/jumbo v4, "STATE_ALWAYS_HIDDEN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string/jumbo v4, "STATE_VISIBLE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string/jumbo v4, "STATE_ALWAYS_VISIBLE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "|ADJUST_UNSPECIFIED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const-string/jumbo v4, "|ADJUST_RESIZE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_2
    const-string/jumbo v4, "|ADJUST_PAN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_3
    const-string/jumbo v4, "|ADJUST_NOTHING"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x30 -> :sswitch_3
    .end sparse-switch
.end method
