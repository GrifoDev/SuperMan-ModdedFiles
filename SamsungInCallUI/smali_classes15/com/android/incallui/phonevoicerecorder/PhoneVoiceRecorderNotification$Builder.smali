.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorderNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public mContext:Landroid/content/Context;

.field public mNotification:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mActions:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    invoke-direct {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mNotification:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    .line 196
    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mContext:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mNotification:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->when:J

    .line 200
    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x1400

    .line 218
    if-nez p0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object p0

    .line 219
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 220
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-object p0
.end method

.method public build()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .locals 6

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mNotification:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mActions:Ljava/util/ArrayList;

    # invokes: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->setLatestInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->access$300(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    move-result-object v0

    return-object v0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 204
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 213
    invoke-static {p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 214
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    invoke-static {p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 209
    return-object p0
.end method

.method public setLargeIcon(I)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mNotification:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    # setter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mLargeIcon:I
    invoke-static {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->access$102(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;I)I

    .line 227
    return-object p0
.end method

.method public showAppIcon(Z)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->mNotification:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    # setter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z
    invoke-static {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->access$202(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Z)Z

    .line 242
    return-object p0
.end method
