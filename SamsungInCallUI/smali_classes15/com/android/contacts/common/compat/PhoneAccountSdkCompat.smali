.class public Lcom/android/contacts/common/compat/PhoneAccountSdkCompat;
.super Ljava/lang/Object;
.source "PhoneAccountSdkCompat.java"


# static fields
.field public static final CAPABILITY_VIDEO_CALLING_RELIES_ON_PRESENCE:I = 0x100

.field public static final EXTRA_CALL_SUBJECT_CHARACTER_ENCODING:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING"

.field public static final EXTRA_CALL_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtras(Landroid/telecom/PhoneAccount;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
