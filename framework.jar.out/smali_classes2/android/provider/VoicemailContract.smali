.class public Landroid/provider/VoicemailContract;
.super Ljava/lang/Object;
.source "VoicemailContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/VoicemailContract$Status;,
        Landroid/provider/VoicemailContract$Voicemails;
    }
.end annotation


# static fields
.field public static final ACTION_FETCH_VOICEMAIL:Ljava/lang/String; = "android.intent.action.FETCH_VOICEMAIL"

.field public static final ACTION_NEW_VOICEMAIL:Ljava/lang/String; = "android.intent.action.NEW_VOICEMAIL"

.field public static final ACTION_SYNC_VOICEMAIL:Ljava/lang/String; = "android.provider.action.SYNC_VOICEMAIL"

.field public static final ACTION_VOICEMAIL_SMS_RECEIVED:Ljava/lang/String; = "com.android.internal.provider.action.VOICEMAIL_SMS_RECEIVED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.voicemail"

.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.provider.extra.PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_SELF_CHANGE:Ljava/lang/String; = "com.android.voicemail.extra.SELF_CHANGE"

.field public static final EXTRA_VOICEMAIL_SMS:Ljava/lang/String; = "android.provider.extra.VOICEMAIL_SMS"

.field public static final PARAM_KEY_SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final SOURCE_PACKAGE_FIELD:Ljava/lang/String; = "source_package"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
