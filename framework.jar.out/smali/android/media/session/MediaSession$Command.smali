.class final Landroid/media/session/MediaSession$Command;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Command"
.end annotation


# instance fields
.field public final command:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final stub:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "stub"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    iput-object p1, p0, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    .line 1267
    iput-object p2, p0, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    .line 1268
    iput-object p3, p0, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    .line 1265
    return-void
.end method
