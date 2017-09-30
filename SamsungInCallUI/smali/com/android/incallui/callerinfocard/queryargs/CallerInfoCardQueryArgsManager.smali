.class public Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgsManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILjava/lang/Object;)Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/ProfileQueryArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/queryargs/ProfileQueryArgs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/BirthdayQueryArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/queryargs/BirthdayQueryArgs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/AnniversaryQueryArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/queryargs/AnniversaryQueryArgs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/EmailQueryArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/queryargs/EmailQueryArgs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method
