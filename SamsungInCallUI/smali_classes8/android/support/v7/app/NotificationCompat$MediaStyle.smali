.class public Landroid/support/v7/app/NotificationCompat$MediaStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# instance fields
.field mActionsToShowInCompact:[I

.field mCancelButtonIntent:Landroid/app/PendingIntent;

.field mShowCancelButton:Z

.field mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 180
    invoke-virtual {p0, p1}, Landroid/support/v7/app/NotificationCompat$MediaStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 181
    return-void
.end method


# virtual methods
.method public setCancelButtonIntent(Landroid/app/PendingIntent;)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 239
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    .line 240
    return-object p0
.end method

.method public setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0
    .param p1, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 200
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0
    .param p1, "actions"    # [I

    .prologue
    .line 190
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 191
    return-object p0
.end method

.method public setShowCancelButton(Z)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    .line 229
    return-object p0
.end method
