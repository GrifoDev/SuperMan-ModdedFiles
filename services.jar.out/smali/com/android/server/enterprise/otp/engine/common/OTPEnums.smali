.class public Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.super Ljava/lang/Object;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-enterprise-otp-engine-common-OTPEnums$KeyUsageSwitchesValues:[I


# direct methods
.method private static synthetic -getcom-android-server-enterprise-otp-engine-common-OTPEnums$KeyUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums;->-com-android-server-enterprise-otp-engine-common-OTPEnums$KeyUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums;->-com-android-server-enterprise-otp-engine-common-OTPEnums$KeyUsageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->values()[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums;->-com-android-server-enterprise-otp-engine-common-OTPEnums$KeyUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final keyUsageToStr(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums;->-getcom-android-server-enterprise-otp-engine-common-OTPEnums$KeyUsageSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "OTP"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "CR"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Encrypt"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Integrity"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "Verify"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "Unlock"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "Decrypt"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "KeyWrap"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "Unwrap"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "Derive"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "Generate"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public static strToKeyUsage(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    .locals 1

    const-string/jumbo v0, "OTP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_0
    const-string/jumbo v0, "CR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_1
    const-string/jumbo v0, "Encrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_2
    const-string/jumbo v0, "Integrity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_3
    const-string/jumbo v0, "Verify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_4
    const-string/jumbo v0, "Unlock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_5
    const-string/jumbo v0, "Decrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_6
    const-string/jumbo v0, "KeyWrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_7
    const-string/jumbo v0, "Unwrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_8
    const-string/jumbo v0, "Derive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_9
    const-string/jumbo v0, "Generate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0

    :cond_a
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0
.end method
